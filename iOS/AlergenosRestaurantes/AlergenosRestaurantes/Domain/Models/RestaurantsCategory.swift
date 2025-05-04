import Foundation

struct RestaurantsCategory: Codable, Identifiable, Equatable, Hashable {
    let id: UUID
    let name: String?
    let photo: String?
    let createdAt: Date?
    let modifiedAt: Date?
}
