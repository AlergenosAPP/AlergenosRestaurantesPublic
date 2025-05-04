import SwiftUI

struct WelcomeUserView: View {
    let username: String
    var onUpgrade: () -> Void = {}
    @Binding var path: [SettingsDestination]

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Bienvenido, \(username)")
                        .font(.title3).bold()
                    
                    Text("Free")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                Circle()
                    .fill(Color.teal)
                    .frame(width: 36, height: 36)
                    .overlay(
                        Text(String(username.prefix(1)).uppercased())
                            .font(.headline)
                            .foregroundColor(.white)
                    )
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Únete al plan premium")
                    .bold()
                
                VStack(alignment: .leading, spacing: 2) {
                    Text("• Tus peticiones dispondrán de prioridad y serán resueltas en menos de 72 horas")
                    Text("• Sin anuncios en toda la aplicación")
                    Text("• Con acceso a betas anticipadas")
                }
                .font(.subheadline)
            }
            
            Button(action: onUpgrade) {
                Text("Hazte Premium")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        LinearGradient(colors: [Color.blue, Color.purple], startPoint: .leading, endPoint: .trailing)
                    )
                    .foregroundColor(.white)
                    .cornerRadius(16)
            }
            .padding(.top, 8)
            
        }
        .padding()
        .background(
            LinearGradient(colors: [Color(.systemTeal).opacity(0.1), Color(.systemTeal).opacity(0.3)],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
        )
        .cornerRadius(20)
        .padding(.horizontal)
    }
}
