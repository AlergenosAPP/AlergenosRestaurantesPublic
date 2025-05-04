import Fluent
import Vapor

extension RestaurantVariant {
    struct Create: Content, Validatable {
        let restaurantId: UUID
        let name: String
        let address: String
        let latitude: Double
        let longitude: Double
        let phoneNumber: Int
        let mail: String
        
        static func validations(_ validations: inout Validations) {
            validations.add("name", as: String.self, is: .count(2...100), required: true)
            validations.add("address", as: String.self, is: .count(5...200), required: true)
            // Agrega validaciones adicionales para phoneNumber y mail según necesites.
        }
    }
    
    struct Update: Content {
        let name: String
        let address: String
        let latitude: Double
        let longitude: Double
        let phoneNumber: Int
        let mail: String
    }
    
    struct DTO: Content {
        let id: UUID?
        let restaurantParentId: UUID?
        let restaurantParentName: String
        let name: String
        let address: String
        let latitude: Double
        let longitude: Double
        let phoneNumber: Int?
        let mail: String?
        let sponsored: Int
        let price: Int
        let createdAt: Date?
        let modifiedAt: Date?
        let restaurantLogo: String?
        let restaurantBackground: String?
        let categories: [CategoryDTO?]
        let dishesCount: Int
        let safeDishesCount: Int?
        let dishes: [Dish.DTO]?
    }
    
    struct CategoryDTO: Content {
        let id: UUID
        let name: String
    }
    
    func toDTO(safeDishesCount: Int? = nil, dishes: [Dish.DTO]? = nil) -> DTO {
        return DTO(
            id: self.id,
            restaurantParentId: self.restaurant.id,
            restaurantParentName: self.restaurant.name,
            name: self.name,
            address: self.address,
            latitude: self.latitude,
            longitude: self.longitude,
            phoneNumber: self.phoneNumber,
            mail: self.mail,
            sponsored: self.restaurant.sponsored,
            price: self.restaurant.price,
            createdAt: self.createdAt,
            modifiedAt: self.modifiedAt,
            restaurantLogo: self.restaurant.photoLogo,
            restaurantBackground: self.restaurant.photoBackground,
            categories: self.restaurant.categories.compactMap {
                guard let id = $0.id else { return nil }
                return CategoryDTO(id: id, name: $0.name)
            },
            dishesCount: self.restaurant.dishes.count,
            safeDishesCount: safeDishesCount,
            dishes: dishes
        )
    }
}
