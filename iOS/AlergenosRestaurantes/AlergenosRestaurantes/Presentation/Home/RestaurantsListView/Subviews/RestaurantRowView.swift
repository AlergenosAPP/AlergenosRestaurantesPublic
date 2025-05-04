import SwiftUI
import CoreLocation
import Kingfisher

struct RestaurantRowView: View {
    let restaurant: Restaurant
    let distanceKm: Double?
    
    init(restaurant: Restaurant, distanceKm: Double?) {
        self.restaurant = restaurant
        self.distanceKm = distanceKm
    }
    
    /// URL completa de la imagen de fondo del restaurante
    private var backgroundURL: URL? {
        guard let encoded = restaurant.restaurantBackground.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) else { return nil }
        return URL(string: "http://localhost:8080/\(encoded.trimmingCharacters(in: CharacterSet(charactersIn: "/")))")
    }

    /// URL completa del logotipo del restaurante
    private var logoURL: URL? {
        guard let encoded = restaurant.restaurantLogo.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) else { return nil }
        return URL(string: "http://localhost:8080/\(encoded.trimmingCharacters(in: CharacterSet(charactersIn: "/")))")
    }

    // distanceKm is now passed in directly; remove computed property
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .bottomTrailing) {
                if let bgURL = backgroundURL {
                    KFImage(bgURL)
                        .placeholder {
                            ZStack {
                                Color.gray.opacity(0.2)
                                Image(systemName: "photo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.gray)
                            }
                        }
                        .fade(duration: 0.3)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 140)
                        .clipped()
                }
                
                if let distance = distanceKm {
                    HStack(spacing: 4) {
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(.white)
                        if distance < 1.0 {
                            Text("\(Int(distance * 1000)) m")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        } else {
                            Text(String(format: "%.1f km", distance))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                    }
                    .font(.caption)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color.black.opacity(0.6))
                    .cornerRadius(8)
                    .padding([.bottom, .trailing], 8)
                }
                if let logoURL = logoURL {
                    KFImage(logoURL)
                        .placeholder {
                            ZStack {
                                Color.gray.opacity(0.2)
                                Image(systemName: "photo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 16, height: 16)
                                    .foregroundColor(.gray)
                            }
                        }
                        .fade(duration: 0.3)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.white, lineWidth: 0.5)
                        )
                        .padding([.bottom, .leading], 8)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                }
            }
            
            HStack {
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack(spacing: 8) {
                        Text(restaurant.restaurantParentName)
                            .fontWeight(.semibold)
                        Text("·")
                            .foregroundColor(.secondary)
                        Text(String(repeating: "€", count: restaurant.price))
                            .fontWeight(.bold)
                    }
                    .font(.subheadline)

                    Text(restaurant.name)
                        .font(.title3)
                        .fontWeight(.bold)
                    Text(restaurant.categories.compactMap { $0.name }.joined(separator: ", "))
                        .font(.caption)
                    Text(restaurant.address)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
                
                VStack {
                    AptosIndicatorView(
                        safeDishesCount: restaurant.safeDishesCount,
                        totalDishesCount: restaurant.dishesCount
                    )
                    Spacer()
                }
                
            }
            .padding()
            .background(Color.white)
        }
        .cornerRadius(16)
        .shadow(radius: 4)
        .padding(.vertical, 4)
    }
}

let restaurant = Restaurant(
    id: UUID(),
    restaurantParentId: UUID(),
    restaurantParentName: "Cadena Veggie",
    name: "Veggie Delight",
    restaurantLogo: "https://picsum.photos/32",
    restaurantBackground: "https://picsum.photos/300/150",
    dishesCount: 56,
    safeDishesCount: 6,
    latitude: 40.4168,
    longitude: -3.7038,
    address: "Calle Ejemplo 123",
    mail: "contacto@ejemplo.com",
    phoneNumber: 123456789,
    sponsored: 1,
    price: 3,
    createdAt: Date(),
    modifiedAt: Date(),
    dishes: [],
    categories: [
        RestaurantsCategory(
            id: UUID(),
            name: "Vegetariano",
            photo: "",
            createdAt: Date(),
            modifiedAt: Date()
        ),
        RestaurantsCategory(
            id: UUID(),
            name: "Saludable",
            photo: "",
            createdAt: Date(),
            modifiedAt: Date()
        )
    ]
)

let previewRestaurants = Array(repeating: restaurant, count: 10)

#Preview {
    ScrollView {
        VStack(spacing: 16) {
            ForEach(previewRestaurants, id: \.id) { restaurant in
                // For preview, calculate distance once
                let userLocation = CLLocation(latitude: 40.4170, longitude: -3.7040)
                let restaurantLocation = CLLocation(latitude: restaurant.latitude, longitude: restaurant.longitude)
                let distanceKm = userLocation.distance(from: restaurantLocation) / 1000
                RestaurantRowView(
                    restaurant: restaurant,
                    distanceKm: distanceKm
                )
            }
        }
        .padding()
        .background(Color(.systemGroupedBackground))
    }
}
