import Foundation

struct DishCategory: Codable, Hashable {
    let id: UUID
    let name: String?
    let order: Int?
    let createdAt: Date?
    let modifiedAt: Date?
}
