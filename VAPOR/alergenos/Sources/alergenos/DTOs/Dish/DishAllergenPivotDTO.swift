import Fluent
import Vapor

extension DishAllergenPivot {
    /// Estructura para crear una nueva relación entre Dish y Allergen.
    struct Create: Content, Validatable {
        let dishId: UUID
        let allergenId: UUID
        let containsAllergen: Bool
        let mayContain: Bool

        static func validations(_ validations: inout Validations) {
            // Puedes agregar validaciones adicionales si lo crees necesario.
            validations.add("containsAllergen", as: Bool.self, required: true)
            validations.add("mayContain", as: Bool.self, required: true)
        }
    }
    
    /// Estructura para actualizar la relación.
    struct Update: Content {
        let containsAllergen: Bool
        let mayContain: Bool
    }
    
    /// DTO para exponer la información del pivot.
    struct DTO: Content {
        let id: UUID?
        let dishId: UUID
        let allergenId: UUID
        let containsAllergen: Bool
        let mayContain: Bool
        let createdAt: Date?
        let modifiedAt: Date?
    }
    
    /// Transforma una instancia de DishAllergenPivot en su representación DTO.
    func toDTO() -> DTO {
        return DTO(
            id: self.id,
            dishId: self.$dish.id,
            allergenId: self.$allergen.id,
            containsAllergen: self.containsAllergen,
            mayContain: self.mayContain,
            createdAt: self.createdAt,
            modifiedAt: self.lastUpdated
        )
    }
}
