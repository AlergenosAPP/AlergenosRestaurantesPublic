import Foundation

protocol GetAllRestaurantsUseCaseContract {
    func execute() async throws -> [APIRestaurant]
}

final class GetAllRestaurantsUseCase: GetAllRestaurantsUseCaseContract {
    func execute() async throws -> [APIRestaurant] {
        do {
            let restaurantCategories = try await GetAllRestaurantsAPIRequest().perform()
            return restaurantCategories
        } catch {
            throw GetAllRestaurantsUseCaseError(reason: "AllRestaurants UseCase failed")
        }
    }
}

struct GetAllRestaurantsUseCaseError: Error {
    let reason: String
}
