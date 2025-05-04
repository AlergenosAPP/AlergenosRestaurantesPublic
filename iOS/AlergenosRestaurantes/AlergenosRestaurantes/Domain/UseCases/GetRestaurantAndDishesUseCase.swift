import Foundation

protocol GetRestaurantAndDishesUseCaseContract {
    func execute(id: String, allergenIds: [Int]) async throws -> Restaurant
}

final class GetRestaurantAndDishesUseCase: GetRestaurantAndDishesUseCaseContract {
    func execute(id: String, allergenIds: [Int]) async throws -> Restaurant {
        do {
            let restaurant = try await GetRestaurantAndDishesAPIRequest(id: id, allergenIds: allergenIds).perform()
            return restaurant
        } catch {
            throw GetRestaurantAndDishesUseCaseError(reason: "GetRestaurantAndDishes UseCase failed")
        }
    }
}

struct GetRestaurantAndDishesUseCaseError: Error {
    let reason: String
}
