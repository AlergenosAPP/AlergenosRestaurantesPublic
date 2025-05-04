@testable import AlergenosRestaurantes
import FirebaseAuth

final class FirebaseAuthServiceMock: AuthDataSourceProtocol {
    var shouldFail = false

    func register(email: String, password: String) async throws {
        if shouldFail {
            throw URLError(.badServerResponse)
        }
    }
    
    func login(email: String, password: String) async throws {
        if shouldFail {
            throw URLError(.badServerResponse)
        }
    }
    
    func sendEmailVerification() async throws { }
    
    func sendPasswordReset(email: String) async throws { }
    
    func loginWithGoogle(credential: FirebaseAuth.AuthCredential) async throws { }
    
    func loginWithApple(credential: FirebaseAuth.AuthCredential) async throws { }
    
    func logout() throws { }
    
    func isEmailVerified() -> Bool { true }
    
    func currentUserID() -> String? { nil }
    
}
