import Fluent
import Vapor

extension Restaurant {
    struct Create: Content, Validatable {
        let name: String
        let description: String
        let sponsored: Int
        let price: Int
        let photoLogo: String
        let photoBackground: String
        
        static func validations(_ validations: inout Validations) {
            validations.add("name", as: String.self, is: .count(2...100), required: true)
            validations.add("description", as: String.self, is: .count(5...500), required: true)
            validations.add("photoLogo", as: String.self, required: true)
            validations.add("photoBackground", as: String.self, required: true)
        }
        
        func toModel() -> Restaurant {
            return Restaurant(
                name: name,
                description: description,
                sponsored: sponsored,
                price: price,
                photoLogo: photoLogo,
                photoBackground: photoBackground
            )
        }
    }
    
    struct Update: Content {
        let name: String
        let description: String
        let sponsored: Int
        let price: Int
        let photoLogo: String
        let photoBackground: String
    }
    
    struct DTO: Content {
        let id: UUID?
        let name: String
        let description: String
        let sponsored: Int
        let price: Int
        let photoLogo: String
        let photoBackground: String
        let categories: [RestaurantCategory.DTO]
        let createdAt: Date?
        let modifiedAt: Date?
    }
    
    func toDTO() -> DTO {
        return DTO(
            id: id,
            name: name,
            description: description,
            sponsored: sponsored,
            price: price,
            photoLogo: photoLogo,
            photoBackground: photoBackground,
            categories: self.categories.map { $0.toDTO() },
            createdAt: createdAt,
            modifiedAt: modifiedAt
        )
    }
}
