import Foundation
import CoreLocation
@testable import AlergenosRestaurantes

final class MockGetCategoriesUseCase: GetRestaurantCategoriesUseCaseContract {
    
    var stubbedCategories: [RestaurantsCategory] = []
    private(set) var executeCalled = false

    func execute() async throws ->  [AlergenosRestaurantes.RestaurantsCategory]? {
        executeCalled = true
        return stubbedCategories
    }
}
