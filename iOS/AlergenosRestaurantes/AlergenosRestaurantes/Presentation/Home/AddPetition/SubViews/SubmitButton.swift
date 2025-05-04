import SwiftUI

struct SubmitButton: View {
    var title: String
    @Environment(\.isEnabled) private var isEnabled

    var body: some View {
        Button(action: {
            // Acción futura
        }) {
            Text(title)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding()
                .background(isEnabled ? Color.primaryAction : Color.gray)
                .cornerRadius(20)
        }
        .padding(.top)
    }
}
