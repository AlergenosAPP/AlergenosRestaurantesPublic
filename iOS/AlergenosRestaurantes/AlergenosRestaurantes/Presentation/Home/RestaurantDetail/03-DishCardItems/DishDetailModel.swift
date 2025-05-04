import Foundation

struct DishDetailModel {
    let dish: Dish

    var imageURL: URL? {
        URL(string: "http://localhost:8080/\(dish.photo)")
    }

    var name: String {
        dish.name
    }

    var ingredients: String? {
        let trimmed = dish.ingredients.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmed.isEmpty ? nil : trimmed
    }

    var containsAllergens: [AllergenOrPreference] {
        dish.allergens
            .compactMap { $0 }
            .compactMap { AllergenOrPreference(rawValue: $0) }
            .filter { !$0.isPreference }
    }

    var possibleTraces: [AllergenOrPreference] {
        dish.traces
            .compactMap { $0 }
            .compactMap { AllergenOrPreference(rawValue: $0) }
            .filter { !$0.isPreference }
    }

    var dietaryOptions: [DietaryOption] {
        var options: [DietaryOption] = []
        if dish.isSpicy { options.append(.spicy) }
        if dish.isVegetarian { options.append(.vegetarian) }
        if dish.isVegan { options.append(.vegan) }
        return options
    }

    var hasDietaryOptions: Bool {
        !dietaryOptions.isEmpty
    }
}

#if DEBUG
extension DishDetailModel {
    static var mock: DishDetailModel {
        DishDetailModel(
            dish: Dish(
                id: UUID(),
                name: "Hamburguesa Deluxe",
                photo: "https://via.placeholder.com/600x400",
                description: "Una hamburguesa gourmet con ingredientes premium.",
                ingredients: "Carne 100% vacuno, pan brioche, lechuga, tomate, cebolla caramelizada, queso cheddar.",
                dishCategory: DishCategory(
                    id: UUID(),
                    name: "Hamburguesas",
                    order: 1,
                    createdAt: nil,
                    modifiedAt: nil
                ),
                energyKj: 2500,
                energyKcal: 600,
                fat: 30,
                saturatedFat: 12,
                carbohydrates: 40,
                sugars: 5,
                fibers: 4,
                proteins: 25,
                salt: 2,
                allergens: [1, 2, 3],
                traces: [4],
                hasTraces: true,
                hasAllergen: true,
                isVegetarian: false,
                isVegan: false,
                isSpicy: true,
                createdAt: Date(),
                modifiedAt: Date()
            )
        )
    }
}
#endif
