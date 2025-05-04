import Foundation
import CoreLocation

/// Implementación concreta del protocolo de permisos de localización.
/// Internamente usa nuestro LocationManager.
final class LocationPermissionService: LocationPermissionDataSourceProtocol {
    let locationManager = LocationManager()

    func requestPermission() async -> CLAuthorizationStatus {
        await locationManager.requestWhenInUseAuthorization()
    }

    func checkCurrentPermission() -> CLAuthorizationStatus {
        locationManager.authorizationStatus()
    }

    func getLastKnownLocation() -> CLLocation? {
        locationManager.lastKnownLocation
    }

    func requestCurrentLocation() async throws -> CLLocation {
        try await locationManager.requestCurrentLocation()
    }

    func startUpdatingLocation() {
        locationManager.startUpdatingLocation()
    }

    func stopUpdatingLocation() {
        locationManager.stopUpdatingLocation()
    }
    
    var manager: LocationManager {
        return locationManager
    }
}
