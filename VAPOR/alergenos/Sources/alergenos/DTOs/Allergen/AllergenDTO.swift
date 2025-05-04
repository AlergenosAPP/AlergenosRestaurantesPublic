import Fluent
import Vapor

extension Allergen {
    struct Create: Content, Validatable {
        let allergenNumber: Int
        let name: String
        
        static func validations(_ validations: inout Validations) {
            validations.add("name", as: String.self, is: .count(2...50), required: true)
        }
    }
    
    struct DTO: Content {
        let id: UUID?
        let allergenNumber: Int
        let name: String
        let createdAt: Date?
        let modifiedAt: Date?
    }
    
    func toDTO() -> DTO {
        return DTO(
            id: id,
            allergenNumber: allergenNumber,
            name: name,
            createdAt: createdAt,
            modifiedAt: modifiedAt
        )
    }
}
