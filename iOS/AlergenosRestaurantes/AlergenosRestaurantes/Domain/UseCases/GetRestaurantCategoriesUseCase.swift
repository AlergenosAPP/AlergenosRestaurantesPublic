import Foundation

protocol GetRestaurantCategoriesUseCaseContract {
    func execute() async throws -> [RestaurantsCategory]?
}

final class GetRestaurantCategoriesUseCase: GetRestaurantCategoriesUseCaseContract {
    func execute() async throws -> [RestaurantsCategory]? {
        do {
            let restaurantCategories = try await GetRestaurantCategoriesAPIRequest().perform()
            return restaurantCategories
        } catch {
            throw GetRestaurantCategoriesUseCaseError(reason: "RestaurantCategories UseCase failed")
        }
    }
}

struct GetRestaurantCategoriesUseCaseError: Error {
    let reason: String
}
