import SwiftUI

struct SettingsAccountView: View {
    @Binding var path: [SettingsDestination]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Date de alta y consigue acceso a más ventajas")
                .font(.title2)
                .bold()
                .fixedSize(horizontal: false, vertical: true)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("• Podrás realizar peticiones para añadir restaurantes y platos nuevos")
                Text("• Experiencia más personalizada")
            }
            .font(.subheadline)
            .fixedSize(horizontal: false, vertical: true)

            HStack(spacing: 12) {
                StyledButton(title: "Registro", isFilled: false) {
                    path.append(.registerUser)
                }

                StyledButton(title: "Iniciar sesión", isFilled: true) {
                    path.append(.loginUser)
                }
            }
            .padding(.top, 8)
        }
        .padding()
        .background(LinearGradient(colors: [Color(.systemTeal).opacity(0.2), Color(.systemTeal).opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(20)
        .padding(.horizontal)
    }
}

struct StyledButton: View {
    let title: String
    let isFilled: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding()
                .background(isFilled ? Color.primaryAction : Color.white)
                .foregroundColor(isFilled ? .white : .black)
                .cornerRadius(20)
        }
    }
}
