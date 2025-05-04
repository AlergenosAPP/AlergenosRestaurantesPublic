import SwiftUI

struct WelcomePremiumView: View {
    let username: String

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Bienvenido, \(username)")
                            .font(.title3).bold()
                        Image(systemName: "diamond.fill")
                            .foregroundColor(.blue)
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(.purple, .blue)
                    }

                    Text("Premium")
                        .font(.subheadline)
                        .foregroundColor(.black)
                }

                Spacer()

                Circle()
                    .fill(Color.teal)
                    .frame(width: 40, height: 40)
                    .overlay(
                        Text(String(username.prefix(1)).uppercased())
                            .font(.headline)
                            .foregroundColor(.white)
                    )
            }

            VStack(alignment: .leading, spacing: 4) {
                Text("• Tus peticiones serán resueltas en menos de 72 horas")
                Text("• Sin anuncios en toda la aplicación")
                Text("• Acceso a betas anticipadas")
            }
            .font(.subheadline)
        }
        .padding()
        .background(
            LinearGradient(colors: [
                Color(.systemTeal).opacity(0.1),
                Color(.systemTeal).opacity(0.3)
            ], startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .cornerRadius(20)
        .padding(.horizontal)
    }
}
