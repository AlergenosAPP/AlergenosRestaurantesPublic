import SwiftUI

struct RegisterLoginView: View {
    @Bindable var viewModel: RegisterLoginViewModel
    let isLogin: Bool

    @State private var showErrorAlert = false

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text(isLogin ? "Iniciar sesión" : "Registro")
                    .font(.title2).bold()
            }
            .padding(.top)

            Divider()
                .frame(height: 2)
                .overlay(Color(.systemGray3))

            VStack(alignment: .leading, spacing: 16) {
                if !isLogin {
                    VStack(alignment: .leading) {
                        Text("Nombre")
                            .font(.subheadline).bold()
                        TextField("Username", text: $viewModel.username)
                            .textFieldStyle(CustomTextFieldStyle())
                            .autocorrectionDisabled(true)
                    }
                }

                VStack(alignment: .leading) {
                    Text("Correo electrónico")
                        .font(.subheadline).bold()
                    TextField("Email", text: $viewModel.email)
                        .textFieldStyle(CustomTextFieldStyle())
                        .autocorrectionDisabled(true)
                }

                VStack(alignment: .leading) {
                    Text("Contraseña")
                        .font(.subheadline).bold()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(CustomTextFieldStyle())
                }
            }

            RegisterLoginButtonView(viewModel: viewModel, isLogin: isLogin)

            Spacer().frame(height: 16)
            ContinueWithView(viewModel: viewModel)
            Spacer()
        }
        .padding()
        .onAppear {
            viewModel.email = ""
            viewModel.username = ""
            viewModel.password = ""
        }
        // Escuchar si el login fue exitoso
        .onChange(of: viewModel.error) { _, newValue in
            if !newValue.isEmpty {
                showErrorAlert = true
            }
        }
        .alert("Error", isPresented: $showErrorAlert) {
            Button("OK", role: .cancel) {
                viewModel.error = "" // Limpiamos después de mostrar
            }
        } message: {
            Text("Algo ha ido mal...")
//            Text(viewModel.error)     //Descomentar para mostrar el error
        }
    }
}


#Preview {
    RegisterLoginView(viewModel: RegisterLoginViewModel(), isLogin: true)
}
