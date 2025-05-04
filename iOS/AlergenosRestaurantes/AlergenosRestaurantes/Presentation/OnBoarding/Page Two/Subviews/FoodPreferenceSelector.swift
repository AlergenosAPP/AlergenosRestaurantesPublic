import SwiftUI

struct FoodPreferenceSelector: View {
    let selected: Set<AllergenOrPreference>
    let onToggle: (AllergenOrPreference) -> Void

    private let prefs = AllergenOrPreference.allCases.filter(\.isPreference)

    var body: some View {
        HStack(spacing: 8) {
            ForEach(prefs, id: \.self) { item in
                Button {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        onToggle(item)
                    }
                } label: {
                    VStack(spacing: 4) {
                        Image(item.svgName)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 48)
                            .opacity(selected.contains(item) ? 1 : 0.3)
                            .scaleEffect(selected.contains(item) ? 1.05 : 1.0)
                            .animation(.easeInOut(duration: 0.2), value: selected.contains(item))
                        Text(item.name)
                            .font(.caption)
                            .fontWeight(selected.contains(item) ? .bold : .regular)
                            .foregroundColor(selected.contains(item) ? .primary : .secondary)
                            .multilineTextAlignment(.center)
                    }
                    .frame(width: 90)
                }
                .buttonStyle(.plain)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    let mockSelected: Set<AllergenOrPreference> = [.vegano]
    FoodPreferenceSelector(selected: mockSelected) { item in
        // Acción de prueba: imprime en consola
        print("Toggle preference:", item)
    }
}
