import SwiftUI

struct RegisterLoginButtonView: View {
    @Bindable var viewModel: RegisterLoginViewModel
    let isLogin: Bool
    
    var body: some View {
        if(isLogin) {
            Button {
                Task{
                    await viewModel.login()
                }
                
            } label: {
                Text("Entrar")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .bold()
                    .background(viewModel.isLoginValid ? Color.primaryAction : Color.gray.opacity(0.2))
                    .foregroundColor(viewModel.isLoginValid ? .white : .gray)
                    .cornerRadius(10)
            }
            .disabled(!viewModel.isLoginValid)
        }else{
            Button {
                Task{
                    await viewModel.register()
                }
            } label: {
                Text("Registrarse")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .bold()
                    .background(viewModel.isRegisterValid ? Color.primaryAction : Color.gray.opacity(0.2))
                    .foregroundColor(viewModel.isRegisterValid ? .white : .gray)
                    .cornerRadius(10)
            }
            .disabled(!viewModel.isRegisterValid)
        }
    }
}
