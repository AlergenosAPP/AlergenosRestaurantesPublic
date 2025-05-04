import Foundation

struct GetRestaurantNearbyAPIRequest: APIRequest {
    typealias Response = [Restaurant]
    
    let method: HTTPMethod = .POST
    let path: String = Endpoints().getRestaurantsNearby
    let body: (any Encodable)?
    
    init(latitude: Double, longitude: Double, radius: Int = 1000, allergenIds: [Int]) {
        body = RequestEntity(
            latitude: latitude,
            longitude: longitude,
            radius: radius,
            allergenIds: allergenIds
        )
    }
}

private extension GetRestaurantNearbyAPIRequest {
    struct RequestEntity: Encodable {
        let latitude: Double
        let longitude: Double
        let radius: Int
        let allergenIds: [Int]
    }
}

