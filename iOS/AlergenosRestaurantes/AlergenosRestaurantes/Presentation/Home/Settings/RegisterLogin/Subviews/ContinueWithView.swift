import SwiftUI

struct ContinueWithView: View {
    @Bindable var viewModel: RegisterLoginViewModel
    
    var body: some View {
        VStack(spacing: 12) {
            Button {
                viewModel.signInWithGoogle()
            } label: {
                HStack {
                    Image("googleLogo")
                    Text("Continuar con Google")
                        .bold()
                        .foregroundStyle(Color.black)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue, lineWidth: 1)
                )
            }
            
            Button {
                viewModel.signInWithApple()
            } label: {
                HStack {
                    Image("appleLogo")
                        .foregroundStyle(Color.white)
                    Text("Continuar con Apple")
                        .bold()
                        .foregroundStyle(Color.white)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
            }
        }
    }
}
