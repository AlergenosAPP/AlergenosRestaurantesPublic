import Foundation

struct GetRestaurantAndDishesAPIRequest: APIRequest {
    typealias Response = Restaurant
    
    let method: HTTPMethod = .POST
    let path: String = Endpoints().getRestaurantAndDishes
    let body: (any Encodable)?
    
    init(id: String, allergenIds: [Int]) {
        body = RequestEntity(id: id, allergenIds: allergenIds)
    }
}

private extension GetRestaurantAndDishesAPIRequest {
    struct RequestEntity: Encodable {
        let id: String
        let allergenIds: [Int]
    }
}

