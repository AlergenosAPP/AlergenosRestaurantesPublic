import CoreLocation
import Foundation

/// Implementación concreta del repositorio de localización.
/// Usa internamente un data source que se encarga de gestionar los permisos y la ubicación.
final class LocationRepository: LocationRepositoryProtocol {

    private let permissionDataSource: LocationPermissionDataSourceProtocol

    init(permissionDataSource: LocationPermissionDataSourceProtocol = LocationPermissionService()) {
        self.permissionDataSource = permissionDataSource
    }

    func requestLocationAuthorization() async -> CLAuthorizationStatus {
        await permissionDataSource.requestPermission()
    }

    func currentAuthorizationStatus() -> CLAuthorizationStatus {
        permissionDataSource.checkCurrentPermission()
    }

    func requestCurrentLocation() async throws -> CLLocation {
        try await permissionDataSource.requestCurrentLocation()
    }

    func getLastKnownLocation() -> CLLocation? {
        permissionDataSource.getLastKnownLocation()
    }

    func startTracking() {
        permissionDataSource.startUpdatingLocation()
    }

    func stopTracking() {
        permissionDataSource.stopUpdatingLocation()
    }
    
    var manager: LocationManager? {
        return (permissionDataSource as? LocationPermissionService)?.manager
    }
}
