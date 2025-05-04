import Foundation
import CoreLocation
@testable import AlergenosRestaurantes

// MARK: - Nearby Restaurants

final class MockNearbyRestaurantsUseCase: GetRestaurantNearbyUseCaseContract {
    var stubbedRestaurants: [Restaurant] = []
    private(set) var executeCalled = false

    func execute(latitude: Double,
                 longitude: Double,
                 radius: Int,
                 allergenIds: [Int]) async throws -> [Restaurant] {
        executeCalled = true
        return stubbedRestaurants
    }
}

extension Restaurant {
    static func stub(id: UUID,
                     lat: Double = 0,
                     lon: Double = 0,
                     safeDishes: Int = 0) -> Restaurant {
        Restaurant(
            id: id,
            restaurantParentId: UUID(),                // Dummy parent
            restaurantParentName: "",
            name: "Rest \(id)",
            restaurantLogo: "",
            restaurantBackground: "",
            dishesCount: 0,
            safeDishesCount: safeDishes,
            latitude: lat,
            longitude: lon,
            address: "",
            mail: "",
            phoneNumber: 123456789,
            sponsored: 1,
            price: 2,
            createdAt: Date(),
            modifiedAt: Date(),
            dishes: [],
            categories: []
        )
    }
}
