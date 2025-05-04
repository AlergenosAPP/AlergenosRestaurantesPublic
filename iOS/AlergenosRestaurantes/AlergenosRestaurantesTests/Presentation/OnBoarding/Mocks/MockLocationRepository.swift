import CoreLocation
@testable import AlergenosRestaurantes

/// A test double for LocationRepositoryProtocol
final class MockLocationRepository: LocationRepositoryProtocol {
    func requestCurrentLocation() async throws -> CLLocation {
        if let location = lastKnownLocation {
            return location
        } else {
            throw NSError(domain: "MockLocationRepository", code: 1, userInfo: [NSLocalizedDescriptionKey: "No location available"])
        }
    }
    
    
    private(set) var didRequestPermission = false
    var lastKnownLocation: CLLocation? = CLLocation(latitude: 0, longitude: 0)

    func requestLocationAuthorization() async -> CLAuthorizationStatus {
        didRequestPermission = true
        return .authorizedWhenInUse
    }

    func currentAuthorizationStatus() -> CLAuthorizationStatus {
        return .authorizedWhenInUse
    }
    
    func getLastKnownLocation() -> CLLocation? {
        return lastKnownLocation
    }

    func startTracking() { /* no‑op */ }
    func stopTracking()  { /* no‑op */ }
}
