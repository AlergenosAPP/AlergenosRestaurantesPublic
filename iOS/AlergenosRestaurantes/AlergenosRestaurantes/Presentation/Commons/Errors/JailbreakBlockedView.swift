import SwiftUI

struct JailbreakBlockedView: View {
    var body: some View {
        VStack(spacing: 32) {
            Image(systemName: "lock.shield.fill")
                .font(.system(size: 80))
                .foregroundColor(.error)
                .padding(.bottom, 8)

            Text("Dispositivo modificado")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)

            Text("Este dispositivo tiene jailbreak o ha sido modificado. "
                 + "Por razones de seguridad, esta aplicación no puede ejecutarse.")
                .font(.body)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemBackground))
        .ignoresSafeArea()
    }
}

#Preview {
    JailbreakBlockedView()
}
