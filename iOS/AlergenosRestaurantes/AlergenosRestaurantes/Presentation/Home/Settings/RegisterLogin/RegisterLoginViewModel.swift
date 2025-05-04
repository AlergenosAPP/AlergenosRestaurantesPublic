import Foundation

@Observable
class RegisterLoginViewModel: RegisterLoginViewModelProtocol {
    var username: String = ""
    var email: String = ""
    var password: String = ""
    var error: String = ""
    var isLogged: Bool = false
    var isPremium: Bool = false

    var repository: AuthDataSourceProtocol
    
    init(repository: AuthDataSourceProtocol = FirebaseAuthService()){
        self.repository = repository
    }
    
    // MARK: - Functions
    
    ///Clousure used to go back in navigation
    var goBack: (() -> Void)? = nil
    
    var isRegisterValid: Bool {
        !username.isEmpty && !email.isEmpty && !password.isEmpty
    }

    var isLoginValid: Bool {
        !email.isEmpty && !password.isEmpty
    }

    func register() async {
        print("Registro: \(username), \(email)")
        
        do {
            try await repository.register(email: email, password: password)
        } catch {
            self.error = error.localizedDescription
            return
        }
        
        isLogged = true
        goBack?()
    }

    func login() async {
        print("Login: \(email)")
        
        do {
            try await repository.login(email: email, password: password)
        } catch {
            self.error = error.localizedDescription
            return
        }
        
        isLogged = true
        goBack?()
    }
    
    //TODO: - Implement using Firebase
    
    func pressedPremium() {
        print("Premium pressed")
        isPremium = true
    }

    func signInWithGoogle() {
        print("Iniciar sesión con Google")
    }

    func signInWithApple() {
        print("Iniciar sesión con Apple")
    }
}
