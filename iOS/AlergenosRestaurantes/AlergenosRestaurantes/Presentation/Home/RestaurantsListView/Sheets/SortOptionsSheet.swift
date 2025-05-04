import SwiftUI

struct SortOptionsSheet: View {
    @Binding var isPresented: Bool
    var selectedOption: RestaurantSortOption
    var onSelect: (RestaurantSortOption) -> Void

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

            Text("Ordenar por")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.horizontal)
                .padding(.bottom, 8)

            Button(action: {
                onSelect(.distance)
            }) {
                HStack {
                    Image(systemName: RestaurantSortOption.distance.icon)
                    Text(RestaurantSortOption.distance.label)
                    Spacer()
                    ZStack {
                        Circle()
                            .stroke(Color.primary, lineWidth: 1)
                            .frame(width: 18, height: 18)
                        if RestaurantSortOption.distance == selectedOption {
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

            Button(action: {
                onSelect(.suitablePlates)
            }) {
                HStack {
                    Image(systemName: RestaurantSortOption.suitablePlates.icon)
                    Text(RestaurantSortOption.suitablePlates.label)
                    Spacer()
                    ZStack {
                        Circle()
                            .stroke(Color.primary, lineWidth: 1)
                            .frame(width: 18, height: 18)
                        if RestaurantSortOption.suitablePlates == selectedOption {
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
