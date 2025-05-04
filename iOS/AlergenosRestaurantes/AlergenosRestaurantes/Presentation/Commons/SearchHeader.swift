import SwiftUI

struct SearchHeader: View {
    @Binding var searchText: String
    var onCancel: () -> Void

    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.primaryAction)
                TextField("Busca un establecimiento o restaurante", text: $searchText)
                    .autocorrectionDisabled(true)
                    .foregroundColor(.primary)
                    .padding(10)
                    .background(Color.gray.opacity(0.12))
                    .cornerRadius(16)
            }

            if !searchText.isEmpty {
                Button(action: onCancel) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.primaryAction)
                        .padding(.leading, 8)
                }
                .transition(.move(edge: .trailing).combined(with: .opacity))
            }
        }
        .padding(.horizontal)
        .animation(.easeInOut(duration: 0.25), value: searchText)
    }
}
