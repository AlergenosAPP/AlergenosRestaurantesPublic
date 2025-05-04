import FirebaseAuth

protocol AuthRepositoryProtocol {
    func register(email: String, password: String) async throws
    func login(email: String, password: String) async throws
    func resetPassword(email: String) async throws
    func logout() async throws
    func isEmailVerified() async throws -> Bool
    func userID() -> String?
    func signInWithGoogle(credential: AuthCredential) async throws
    func signInWithApple(credential: AuthCredential) async throws
}

// 
// En este proyecto, el ViewModel depende directamente del protocolo AuthRepositoryProtocol.
// No estamos usando un caso de uso (UseCase) intermedio porque, en este caso concreto,
// la lógica de autenticación es directa y no requiere reglas de negocio adicionales.
// 
// Crear un caso de uso en este punto sería redundante, ya que simplemente trasladaría
// las mismas funciones del repositorio sin añadir valor.
// 
// Si más adelante añadimos lógica adicional (por ejemplo, validación de email,
// reintentos, combinaciones de llamadas, lógica de analítica...), entonces sí tendría
// sentido crear un AuthUseCase para encapsular esa lógica antes de llamar al repositorio.
// 
// Esta decisión busca mantener el código limpio, simple y fácil de mantener para el equipo.
// 

// @Observable
// final class AuthViewModel {
//      @Published var email = ""
//      @Published var password = ""
//      @Published var error: String?
//
//      private let repository: AuthRepositoryProtocol
//
//      init(repository: AuthRepositoryProtocol) {
//          self.repository = repository
//      }
//
//      func login() async {
//          do {
//              try await repository.login(email: email, password: password)
//          } catch {
//              self.error = error.localizedDescription
//          }
//      }
// }
