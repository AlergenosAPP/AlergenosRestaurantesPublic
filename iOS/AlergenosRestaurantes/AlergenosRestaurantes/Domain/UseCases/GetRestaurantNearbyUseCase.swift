import Foundation

protocol GetRestaurantNearbyUseCaseContract {
    func execute(latitude: Double, longitude: Double, radius: Int, allergenIds: [Int]) async throws -> [Restaurant]
}

final class GetRestaurantNearbyUseCase: GetRestaurantNearbyUseCaseContract {
    func execute(latitude: Double, longitude: Double, radius: Int, allergenIds: [Int]) async throws -> [Restaurant] {
        do {
            let restaurantNearby = try await GetRestaurantNearbyAPIRequest(
                latitude: latitude,
                longitude: longitude,
                radius: radius,
                allergenIds: allergenIds
            ).perform()
            return restaurantNearby
        } catch {
            throw GetRestaurantNearbyUseCaseError(reason: "GetRestaurantNearby UseCase failed")
        }
    }
}

struct GetRestaurantNearbyUseCaseError: Error {
    let reason: String
}
