import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String
    @Binding var isSearching: Bool
    @FocusState private var isFocused: Bool

    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color.primaryAction)

            TextField("Buscar productos...", text: $searchText)
                .focused($isFocused)
                .submitLabel(.search)
                .autocapitalization(.none)
                .disableAutocorrection(true)

            // Botón Cancelar DENTRO de la barra
            Button {
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)

                withAnimation(.easeInOut(duration: 0.3)) {
                    isSearching = false
                }

                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    searchText = ""
                }
            } label: {
                Text("Cancelar")
                    .foregroundColor(Color.primaryAction)
                    .font(.subheadline)
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
        .background(Color.white)
        .cornerRadius(10)
        .padding(.horizontal)
        .padding(.top, 8)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                isFocused = true
            }
        }
    }
}

#if DEBUG
import SwiftUI

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarPreviewWrapper()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray.opacity(0.1))
    }
}

private struct SearchBarPreviewWrapper: View {
    @State private var searchText = "LocoPizza"
    @State private var isSearching = true

    var body: some View {
        SearchBarView(
            searchText: $searchText,
            isSearching: $isSearching
        )
    }
}
#endif
