import Foundation

struct GetRestaurantCategoriesAPIRequest: APIRequest {
    typealias Response = [RestaurantsCategory]
    
    let method: HTTPMethod = .GET
    let path: String = Endpoints().getRestaurantsCategories
}
