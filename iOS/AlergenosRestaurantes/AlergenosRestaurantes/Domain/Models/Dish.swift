import Foundation

struct Dish: Codable, Identifiable, Hashable {
    let id: UUID
    let name: String
    let photo: String
    let description: String
    let ingredients: String
    let dishCategory: DishCategory
    let energyKj: Int?
    let energyKcal: Int?
    let fat: Double?
    let saturatedFat: Double?
    let carbohydrates: Double?
    let sugars: Double?
    let fibers: Double?
    let proteins: Double?
    let salt: Double?
    let allergens: [Int?]
    let traces: [Int?]
    let hasTraces: Bool
    let hasAllergen: Bool
    let isVegetarian: Bool
    let isVegan: Bool
    let isSpicy: Bool
    let createdAt: Date
    let modifiedAt: Date
}
