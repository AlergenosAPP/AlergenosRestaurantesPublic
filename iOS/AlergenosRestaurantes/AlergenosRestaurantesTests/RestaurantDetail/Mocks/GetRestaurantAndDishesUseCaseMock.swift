import Foundation
@testable import AlergenosRestaurantes

// MARK: - Mocks de Use Cases

struct MockRestaurantAndDishesUseCaseSuccess: GetRestaurantAndDishesUseCaseContract {
    func execute(id: String, allergenIds: [Int]) async throws -> Restaurant {
        return Restaurant(
            id: UUID(),
            restaurantParentId: UUID(),
            restaurantParentName: "Mock Parent",
            name: "Mock Restaurant",
            restaurantLogo: "logo.png",
            restaurantBackground: "background.png",
            dishesCount: 3,
            safeDishesCount: 2,
            latitude: 40.0,
            longitude: -3.0,
            address: "Calle Falsa 123",
            mail: "mock@restaurant.com",
            phoneNumber: 123456789,
            sponsored: 1,
            price: 2,
            createdAt: Date(),
            modifiedAt: Date(),
            dishes: [
                Dish(
                    id: UUID(),
                    name: "Mock Dish",
                    photo: "photo.png",
                    description: "Descripción del plato mock.",
                    ingredients: "Mock Ingredientes",
                    dishCategory: DishCategory(
                        id: UUID(),
                        name: "Categoría Mock",
                        order: 1,
                        createdAt: nil,
                        modifiedAt: nil
                    ),
                    energyKj: 1500,
                    energyKcal: 350,
                    fat: 10.0,
                    saturatedFat: 4.0,
                    carbohydrates: 30.0,
                    sugars: 5.0,
                    fibers: 2.5,
                    proteins: 15.0,
                    salt: 1.1,
                    allergens: [1, 2],
                    traces: [],
                    hasTraces: false,
                    hasAllergen: true,
                    isVegetarian: false,
                    isVegan: false,
                    isSpicy: false,
                    createdAt: Date(),
                    modifiedAt: Date()
                )
            ],
            categories: []
        )
    }
}

struct MockRestaurantAndDishesUseCaseFailure: GetRestaurantAndDishesUseCaseContract {
    struct MockError: Error {}
    
    func execute(id: String, allergenIds: [Int]) async throws -> Restaurant {
        throw MockError()
    }
}

struct MockDishCategoriesUseCaseSuccess: GetDishCategoriesFromRestaurantUseCaseContract {
    func execute(restaurantId: String) async throws -> [DishCategory] {
        return [
            DishCategory(
                id: UUID(),
                name: "Categoría Mock",
                order: 1,
                createdAt: nil,
                modifiedAt: nil
            )
        ]
    }
}

struct MockDishCategoriesUseCaseFailure: GetDishCategoriesFromRestaurantUseCaseContract {
    struct MockError: Error {}
    
    func execute(restaurantId: String) async throws -> [DishCategory] {
        throw MockError()
    }
}
