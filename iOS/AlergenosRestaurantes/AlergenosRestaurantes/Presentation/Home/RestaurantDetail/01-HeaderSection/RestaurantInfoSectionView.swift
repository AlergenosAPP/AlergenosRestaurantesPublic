import SwiftUI

struct RestaurantInfoSectionView: View {
    let parentName: String
    let restaurantName: String
    let safeDishesCount: Int
    let totalDishesCount: Int
    let distance: Double?
    let onNavigate: () -> Void

    var body: some View {
        VStack {
            HStack {
                Spacer()

                Rectangle()
                    .fill(distance != nil ? Color.black.opacity(0.5) : Color.clear)
                    .frame(minWidth: 80, maxWidth: 100, minHeight: 30, maxHeight: 30)
                    .cornerRadius(15)
                    .overlay(
                        Group {
                            if let distance = distance {
                                Text(distanceText(from: distance))
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 8)
                                    .lineLimit(1)
                                    .minimumScaleFactor(0.8)
                            }
                        }
                    )
                    .padding(.trailing, 20)
            }

            Button(action: {
                onNavigate()
            }) {
                HStack {
                    Text("Ir")
                        .fontWeight(.semibold)
                    Image(systemName: "location.fill")
                }
                .foregroundColor(.white)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(Color.black.opacity(0.5))
                .cornerRadius(20)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.top, 20)
                .padding(.trailing, 20)
            }

            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text(parentName)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.leading, 32)

                    Text(restaurantName)
                        .font(.title2)
                        .padding(.leading, 32)
                }
                Spacer()
                AptosIndicatorView(
                    safeDishesCount: safeDishesCount,
                    totalDishesCount: totalDishesCount
                )
                .padding(.trailing, 16)
            }
        }
        .padding(.top, 115)
    }

    private func distanceText(from distance: Double) -> AttributedString {
        var formattedDistance: String
        var unit: String

        if distance >= 1 {
            let roundedDistance = Double(round(100 * distance) / 100)
            if roundedDistance.truncatingRemainder(dividingBy: 1) == 0 {
                formattedDistance = String(format: "%.0f", roundedDistance)
            } else {
                formattedDistance = String(format: "%.2f", roundedDistance)
            }
            unit = "Km"
        } else {
            let meters = Int(distance * 1000)
            formattedDistance = "\(meters)"
            unit = "m"
        }

        var attributed = AttributedString(formattedDistance + " " + unit)

        if let range = attributed.range(of: unit) {
            attributed[range].font = .caption.weight(.medium)
            attributed[range].foregroundColor = .white
        }

        return attributed
    }
}

#if DEBUG
import SwiftUI

struct RestaurantInfoSectionView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantInfoSectionView(
            parentName: "Grupo Placeholder",
            restaurantName: "Placeholder Burger",
            safeDishesCount: 5,
            totalDishesCount: 10,
            distance: 1.2,
            onNavigate: { print("Navegar pulsado") }
        )
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.gray.opacity(0.1)) // Opcional para ver mejor
    }
}
#endif
