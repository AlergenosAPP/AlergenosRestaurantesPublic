import FirebaseAuth

final class AuthRepository: AuthRepositoryProtocol {
    private let remote: AuthDataSourceProtocol

    init(remote: AuthDataSourceProtocol) {
        self.remote = remote
    }

    func register(email: String, password: String) async throws {
        try await remote.register(email: email, password: password)
    }

    func login(email: String, password: String) async throws {
        try await remote.login(email: email, password: password)
    }

    func resetPassword(email: String) async throws {
        try await remote.sendPasswordReset(email: email)
    }

    func logout() async throws {
        try remote.logout()
    }

    func isEmailVerified() async throws -> Bool {
        remote.isEmailVerified()
    }

    func userID() -> String? {
        remote.currentUserID()
    }

    func signInWithGoogle(credential: AuthCredential) async throws {
        try await remote.loginWithGoogle(credential: credential)
    }

    func signInWithApple(credential: AuthCredential) async throws {
        try await remote.loginWithApple(credential: credential)
    }
}
