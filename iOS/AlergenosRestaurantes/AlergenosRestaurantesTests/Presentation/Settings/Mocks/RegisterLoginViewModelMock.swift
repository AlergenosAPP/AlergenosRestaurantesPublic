@testable import AlergenosRestaurantes

final class RegisterLoginViewModelMock: RegisterLoginViewModelProtocol {
    var goBack: (() -> Void)?
    
    var isLogged: Bool = false
    var isPremium: Bool = false

    func pressedPremium() {
        isPremium = true
    }
}
