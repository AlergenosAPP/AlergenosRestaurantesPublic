import CoreLocation

protocol LocationRepositoryProtocol {
    /// Solicita permiso de localización (When In Use)
    func requestLocationAuthorization() async -> CLAuthorizationStatus

    /// Devuelve el estado de autorización actual
    func currentAuthorizationStatus() -> CLAuthorizationStatus

    /// Última ubicación conocida
    func getLastKnownLocation() -> CLLocation?

    /// Solicita la ubicación actual una sola vez y la devuelve cuando esté disponible
    func requestCurrentLocation() async throws -> CLLocation

    /// Inicia el seguimiento continuo de ubicación
    func startTracking()

    /// Detiene el seguimiento continuo de ubicación
    func stopTracking()
}
//
// En este módulo de localización, el ViewModel depende directamente del protocolo LocationRepositoryProtocol.
// No usamos un caso de uso (UseCase) porque actualmente las funciones se limitan a delegar llamadas directas,
// como obtener permisos y acceder a la ubicación. No hay lógica adicional que justifique introducir
// un caso de uso, lo cual mantendría una capa innecesaria.
//
// Si en el futuro se añade lógica más compleja (por ejemplo: condiciones previas a la localización,
// lógica combinada con notificaciones, filtrado, validaciones...), entonces sí se podría extraer
// un caso de uso que encapsule esa lógica antes de llamar al repositorio.
//
// Seguimiento continuo:
// La arquitectura también contempla el seguimiento continuo mediante las funciones startTracking()
// y stopTracking(), que activan/desactivan las actualizaciones de ubicación en tiempo real
// a través de CLLocationManager, sin exponerlo directamente.
//
// Ejemplo de ViewModel usando esta arquitectura:
//
// @Observable
// final class LocationViewModel {
//     private(set) var lastLocation: CLLocation?
//     private(set) var permissionStatus: CLAuthorizationStatus = .notDetermined
//
//     private let repository: LocationRepositoryProtocol
//
//     init(repository: LocationRepositoryProtocol) {
//         self.repository = repository
//     }
//
//     func requestPermission() async {
//         permissionStatus = await repository.requestLocationAuthorization()
//     }
//
//     func checkPermissionStatus() {
//         permissionStatus = repository.currentAuthorizationStatus()
//     }
//
//     func requestCurrentLocation() async {
//         do {
//             lastLocation = try await repository.requestCurrentLocation()
//         } catch {
//             print("❌ Error obteniendo la localización actual: \(error)")
//         }
//     }
//
//     func startTracking() {
//         repository.startTracking()
//     }
//
//     func stopTracking() {
//         repository.stopTracking()
//     }
// }
