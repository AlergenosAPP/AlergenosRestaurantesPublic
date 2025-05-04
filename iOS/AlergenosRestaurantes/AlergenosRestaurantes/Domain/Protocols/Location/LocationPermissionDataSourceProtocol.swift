import CoreLocation

/// Abstracción del componente que se encarga de manejar permisos de localización.
/// Normalmente se implementará usando CLLocationManager directamente.
protocol LocationPermissionDataSourceProtocol {
    func requestPermission() async -> CLAuthorizationStatus
    func checkCurrentPermission() -> CLAuthorizationStatus
    func getLastKnownLocation() -> CLLocation?
    func requestCurrentLocation() async throws -> CLLocation
    func startUpdatingLocation()
    func stopUpdatingLocation()
}
