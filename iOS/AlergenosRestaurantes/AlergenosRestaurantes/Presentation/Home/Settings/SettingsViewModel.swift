import SwiftUI

@Observable
class SettingsViewModel {
    var registerLoginVM: RegisterLoginViewModelProtocol
    
    init(registerLoginVM: RegisterLoginViewModelProtocol = RegisterLoginViewModel()) {
        self.registerLoginVM = registerLoginVM
    }
    
    ///Opens the app settings
    func openAppSettings() {
        guard let url = URL(string: UIApplication.openSettingsURLString) else { return }
        UIApplication.shared.open(url)
    }
    
    ///Creates the Login Frame based on if the user is logged or not, and if it's premium
    @ViewBuilder
    func checkLoginState(path: Binding<[SettingsDestination]>) -> some View {
        if registerLoginVM.isPremium {
            WelcomePremiumView(username: "Usuario1")
        } else if registerLoginVM.isLogged {
            WelcomeUserView(
                username: "Usuario1",
                onUpgrade: {
                    self.registerLoginVM.pressedPremium()
                },
                path: path
            )
        } else {
            SettingsAccountView(path: path)
        }
    }
}
