import SwiftUI

struct PriceSortSheet: View {
    @Binding var isPresented: Bool
    @Binding var selectedLevels: [Int]

    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            HStack {
                Spacer()
                Button(action: { isPresented = false }) {
                    Image(systemName: "xmark")
                        .foregroundColor(.primary)
                        .padding()
                }
            }

            Text("Filtrar por precio")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.horizontal)
                .padding(.bottom, 8)

            let priceFilters: [(label: String, value: Int)] = [
                ("€", 1),
                ("€€", 2),
                ("€€€", 3)
            ]

            ForEach(priceFilters, id: \.label) { filter in
                Button(action: {
                    if selectedLevels.contains(filter.value) {
                        selectedLevels.removeAll { $0 == filter.value }
                    } else {
                        selectedLevels.append(filter.value)
                    }
                }) {
                    HStack {
                        Text(filter.label)
                        Spacer()
                        ZStack {
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color.primary, lineWidth: 1)
                                .frame(width: 18, height: 18)
                            if selectedLevels.contains(filter.value) {
                                Circle()
                                    .fill(Color.primaryAction)
                                    .frame(width: 10, height: 10)
                            }
                        }
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 12)
                }
                .foregroundColor(.primary)
            }

            Spacer()

            Button("Mostrar resultados") {
                isPresented = false
            }
            .font(.headline)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.primaryAction)
            .foregroundColor(.white)
            .cornerRadius(12)
            .padding(.horizontal)
            .padding(.bottom)
        }
        .presentationDetents([.medium])
    }
}
