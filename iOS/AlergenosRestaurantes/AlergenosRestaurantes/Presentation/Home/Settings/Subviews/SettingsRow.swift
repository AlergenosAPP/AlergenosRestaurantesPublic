import SwiftUI

struct SettingsRow: View {
    let icon: String
    let text: String
    let action: () async -> Void

    var body: some View {
        Button(action: {
            Task {
                await action()
            }
        }) {
            HStack(spacing: 12) {
                Image(systemName: icon)
                    .frame(width: 24, height: 24)
                Text(text)
                Spacer()
            }
            .foregroundColor(.black)
        }
    }
}
