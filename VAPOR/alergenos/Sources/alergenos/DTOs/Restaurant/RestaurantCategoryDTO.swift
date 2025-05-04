import Fluent
import Vapor

extension RestaurantCategory {
    struct Create: Content, Validatable {
        let name: String
        let photo: String
        
        static func validations(_ validations: inout Validations) {
            validations.add("name", as: String.self, is: .count(2...50), required: true)
        }
    }
    
    struct Update: Content {
        let name: String
        let photo: String
    }
    
    struct DTO: Content {
        let id: UUID?
        let name: String
        let photo: String
        let createdAt: Date?
        let modifiedAt: Date?
    }
    
    func toDTO() -> DTO {
        return DTO(
            id: id,
            name: name,
            photo: photo,
            createdAt: createdAt,
            modifiedAt: modifiedAt
        )
    }
}
