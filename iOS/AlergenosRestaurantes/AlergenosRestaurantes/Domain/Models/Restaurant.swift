import Foundation

struct Restaurant: Codable, Identifiable, Equatable, Hashable {
    let id: UUID
    let restaurantParentId: UUID
    let restaurantParentName: String
    let name: String
    let restaurantLogo: String
    let restaurantBackground: String
    let dishesCount: Int
    let safeDishesCount: Int
    let latitude: Double
    let longitude: Double
    let address: String
    let mail: String?
    let phoneNumber: Int?
    let sponsored: Int
    let price: Int
    let createdAt: Date
    let modifiedAt: Date
    let dishes: [Dish]?
    let categories: [RestaurantsCategory]
}
 
extension Restaurant {
    static func == (lhs: Restaurant, rhs: Restaurant) -> Bool {
        lhs.id == rhs.id
    }
}
