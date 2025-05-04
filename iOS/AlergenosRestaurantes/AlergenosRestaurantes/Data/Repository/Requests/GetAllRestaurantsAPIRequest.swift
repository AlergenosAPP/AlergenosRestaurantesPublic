import Foundation

struct GetAllRestaurantsAPIRequest: APIRequest {
    typealias Response = [APIRestaurant]
    
    let method: HTTPMethod = .GET
    var path: String = Endpoints().getAllRestaurants
}
