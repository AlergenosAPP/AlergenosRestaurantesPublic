import SwiftUI

enum SettingsDestination: Hashable {
    case registerUser
    case loginUser
    case changeAllergens
    case changePersonalData
    case changeLanguage
    case activateLocation
}

struct SettingsView: View {
    @Bindable var viewModel: SettingsViewModel
    @State private var path: [SettingsDestination] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            ScrollView{
                VStack(spacing: 16) {
                    // Registro/Login Card
                    viewModel.checkLoginState(path: $path)
                    
                    
                    // NecesitasAyuda Card
                    NeedHelpView()
                    
                    Divider()
                        .frame(height: 16)
                        .overlay(Color(.systemGray3))
                    
                    // Ajustes List
                    SettingsListView(path: $path, viewModel: viewModel, isLogged: viewModel.registerLoginVM.isLogged)
                    
                    Divider()
                        .frame(height: 16)
                        .overlay(Color(.systemGray3))
                    
                    // Feedback
                    FeedbackView()
                    if viewModel.registerLoginVM.isLogged {
                        Divider()
                            .frame(height: 16)
                            .overlay(Color(.systemGray3))
                        
                        VStack(alignment: .leading, spacing: 16) {
                            SettingsRow(icon: "power", text: "Cerrar sesión") {
                                viewModel.registerLoginVM.isLogged = false
                                viewModel.registerLoginVM.isPremium = false
                            }
                        }
                        .padding(.horizontal)
                        
                        Divider()
                            .frame(height: 16)
                            .overlay(Color(.systemGray3))
                        
                        VStack(alignment: .leading, spacing: 16) {
                            SettingsRow(icon: "trash.fill", text: "Eliminar cuenta") {
                                viewModel.registerLoginVM.isLogged = false
                                viewModel.registerLoginVM.isPremium = false
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    Divider()
                        .frame(height: 8)
                        .overlay(Color(.systemGray3))
                    
                    // Versión y barra inferior
                    Text("versión 0.0.1")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                .navigationDestination(for: SettingsDestination.self) { destination in
                    switch destination {
                    case .registerUser:
                        goToRegisterLogin(isLogin: false)
                    case .loginUser:
                        goToRegisterLogin(isLogin: true)
                    case .changeAllergens:
                        ChangeAllergensView()
                    case .changePersonalData:
                        Text("Cambiar datos personales")
                    case .changeLanguage:
                        Text("Cambiar idioma")
                    case .activateLocation:
                        Text("Activar localización")
                    }
                }
            }
        }
    }
    
    func goToRegisterLogin(isLogin: Bool) -> some View {
        if let realVM = viewModel.registerLoginVM as? RegisterLoginViewModel {
            realVM.goBack = { path.removeLast() }
            return AnyView(RegisterLoginView(viewModel: realVM, isLogin: isLogin))
        } else {
            return AnyView(Text("No se puede mostrar el formulario"))
        }
    }
}


#Preview {
    SettingsView(viewModel: SettingsViewModel())
}
