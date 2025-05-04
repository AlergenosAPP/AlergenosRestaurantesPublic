import Foundation

struct GetDishCategoriesFromRestaurantAPIRequest: APIRequest {
    typealias Response = [DishCategory]
    
    let method: HTTPMethod = .GET
    var path: String = Endpoints().getDishCategoriesRestaurant
    
    init(restaurantId: String) {
        path = ("\(path)\(restaurantId)")
    }
}
