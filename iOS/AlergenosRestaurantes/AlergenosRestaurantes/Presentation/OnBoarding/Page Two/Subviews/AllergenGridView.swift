import SwiftUI

struct AllergenGridView: View {
    let items: [AllergenOrPreference]
    let selected: Set<AllergenOrPreference>
    let onToggle: (AllergenOrPreference) -> Void

    var body: some View {
        let rows = items.chunked(into: 4)
        VStack(spacing: 8) {
            ForEach(rows.indices, id: \.self) { i in
                HStack(spacing: 8) {
                    Spacer(minLength: 0)
                    ForEach(rows[i], id: \.self) { item in
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
                                Spacer()
                            }
                            .frame(width: 80)
                        }
                        .buttonStyle(.plain)
                    }
                    Spacer(minLength: 0)
                }
            }
        }
        .padding(.horizontal)
    }
}

private extension Array {
    func chunked(into size: Int) -> [[Element]] {
        stride(from: 0, to: count, by: size).map {
            Array(self[$0..<Swift.min($0+size, count)])
        }
    }
}
