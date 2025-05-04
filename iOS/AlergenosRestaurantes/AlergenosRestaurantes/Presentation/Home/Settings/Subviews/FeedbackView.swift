import SwiftUI

struct FeedbackView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("¿Cómo ha ido? Danos tu opinión")
                .bold()
            Button("Envíanos tus comentarios") {
                //TODO: Acción para enviar comentarios
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color(.systemGray5))
            .foregroundColor(.black)
            .cornerRadius(20)
        }
        .padding(.horizontal)
    }
}
