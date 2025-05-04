import Fluent
import Vapor

extension DishCategory {
    struct Create: Content, Validatable {
        let name: String
        let order: Int
        
        static func validations(_ validations: inout Validations) {
            validations.add("name", as: String.self, is: .count(2...50), required: true)
        }
    }
    
    struct Update: Content {
        let name: String
        let order: Int
    }
    
    struct DTO: Content {
        let id: UUID?
        let name: String
        let order: Int
        let createdAt: Date?
        let modifiedAt: Date?
    }
    
    func toDTO() -> DTO {
        return DTO(
            id: id,
            name: name,
            order: order,
            createdAt: createdAt,
            modifiedAt: modifiedAt
        )
    }
}
