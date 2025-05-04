import Foundation

protocol GetDishCategoriesFromRestaurantUseCaseContract {
    func execute(restaurantId: String) async throws -> [DishCategory]
}

final class GetDishCategoriesFromRestaurantUseCase: GetDishCategoriesFromRestaurantUseCaseContract {
    func execute(restaurantId: String) async throws -> [DishCategory] {
        do {
            let dishCategories = try await GetDishCategoriesFromRestaurantAPIRequest(restaurantId: restaurantId).perform()
            return dishCategories
        } catch {
            throw GetDishCategoriesFromRestaurantUseCaseError(reason: "GetDishCategories UseCase failed")
        }
    }
}

struct GetDishCategoriesFromRestaurantUseCaseError: Error {
    let reason: String
}
