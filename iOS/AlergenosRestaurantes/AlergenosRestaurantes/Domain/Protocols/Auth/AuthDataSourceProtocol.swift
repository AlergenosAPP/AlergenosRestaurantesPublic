import FirebaseAuth

protocol AuthDataSourceProtocol {
    func register(email: String, password: String) async throws
    func login(email: String, password: String) async throws
    func sendEmailVerification() async throws
    func sendPasswordReset(email: String) async throws
    func loginWithGoogle(credential: AuthCredential) async throws
    func loginWithApple(credential: AuthCredential) async throws
    func logout() throws
    func isEmailVerified() -> Bool
    func currentUserID() -> String?
}
