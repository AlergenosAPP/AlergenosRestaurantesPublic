import FirebaseAuth

final class FirebaseAuthService: AuthDataSourceProtocol {

    func register(email: String, password: String) async throws {
        let result = try await Auth.auth().createUser(withEmail: email, password: password)
        try await result.user.sendEmailVerification()
    }

    func login(email: String, password: String) async throws {
        let result = try await Auth.auth().signIn(withEmail: email, password: password)
        guard result.user.isEmailVerified else {
            throw NSError(domain: "email_not_verified", code: 401)
        }
    }

    func sendEmailVerification() async throws {
        guard let user = Auth.auth().currentUser else { return }
        try await user.sendEmailVerification()
    }

    func sendPasswordReset(email: String) async throws {
        try await Auth.auth().sendPasswordReset(withEmail: email)
    }

    func loginWithGoogle(credential: AuthCredential) async throws {
        _ = try await Auth.auth().signIn(with: credential)
    }

    func loginWithApple(credential: AuthCredential) async throws {
        _ = try await Auth.auth().signIn(with: credential)
    }

    func logout() throws {
        try Auth.auth().signOut()
    }

    func isEmailVerified() -> Bool {
        Auth.auth().currentUser?.isEmailVerified ?? false
    }

    func currentUserID() -> String? {
        Auth.auth().currentUser?.uid
    }
}
