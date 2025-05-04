import Foundation

struct APIRestaurant: Codable, Hashable, Identifiable {
    let id: UUID
    let name: String
    let description: String
    let price: Int
    let sponsored: Int
    let photoLogo: String
    let photoBackground: String
    let categories: [RestaurantsCategory]
    let createdAt: Date
    let modifiedAt: Date
}
