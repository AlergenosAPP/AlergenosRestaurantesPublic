import CoreLocation
import Combine

/// Encapsula directamente el CLLocationManager.
/// No se expone directamente a la capa de dominio.
/// Solo lo usa internamente LocationPermissionService.
final class LocationManager: NSObject, CLLocationManagerDelegate {
    private let manager = CLLocationManager()
    private var continuation: CheckedContinuation<CLAuthorizationStatus, Never>?
    /// Continuación para completar una petición puntual de localización
    private var locationContinuation: CheckedContinuation<CLLocation, Error>?
    let authorizationStatusDidChange = PassthroughSubject<CLAuthorizationStatus, Never>()

    private(set) var lastKnownLocation: CLLocation?
    @Published var currentLocation: CLLocation?
    
    override init() {
        super.init()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.distanceFilter = kCLDistanceFilterNone
    }

    func requestWhenInUseAuthorization() async -> CLAuthorizationStatus {
        manager.requestWhenInUseAuthorization()
        return await withCheckedContinuation { continuation in
            self.continuation = continuation
        }
    }

    func authorizationStatus() -> CLAuthorizationStatus {
        manager.authorizationStatus
    }

    func startUpdatingLocation() {
        manager.startUpdatingLocation()
    }

    func stopUpdatingLocation() {
        manager.stopUpdatingLocation()
    }

    func getLastKnownLocation() -> CLLocation? {
        return lastKnownLocation
    }

    func requestCurrentLocation() async throws -> CLLocation {
        manager.requestLocation()
        return try await withCheckedThrowingContinuation { continuation in
            self.locationContinuation = continuation
        }
    }

    // MARK: - CLLocationManagerDelegate

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        lastKnownLocation = location
        currentLocation = location

        if let locationContinuation {
            locationContinuation.resume(returning: location)
            self.locationContinuation = nil
        }
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        if let locationContinuation {
            locationContinuation.resume(throwing: error)
            self.locationContinuation = nil
        }
    }

    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        if let continuation {
            continuation.resume(returning: manager.authorizationStatus)
            self.continuation = nil
        }
        authorizationStatusDidChange.send(manager.authorizationStatus)
    }
}
