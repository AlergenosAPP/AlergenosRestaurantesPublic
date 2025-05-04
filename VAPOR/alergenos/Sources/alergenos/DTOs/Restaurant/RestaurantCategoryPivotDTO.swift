import Fluent
import Vapor

extension RestaurantCategoryPivot {
    /// Estructura para crear una nueva relación entre un Restaurant y una RestaurantCategory.
    struct Create: Content, Validatable {
        let restaurantId: UUID
        let categoryId: UUID

        static func validations(_ validations: inout Validations) {
            // Aquí podrías agregar validaciones si fuera necesario.
        }
    }

    /// Estructura para actualizar una relación existente. En pivotes generalmente no se actualizan, pero se define por completitud.
    struct Update: Content {
        let restaurantId: UUID
        let categoryId: UUID
    }

    /// DTO para exponer la información del pivot.
    struct DTO: Content {
        let id: UUID?
        let restaurantId: UUID
        let categoryId: UUID
        let createdAt: Date?
        let modifiedAt: Date?
    }

    /// Convierte la instancia del pivot a su representación DTO.
    func toDTO() -> DTO {
        return DTO(
            id: self.id,
            restaurantId: self.$restaurant.id,
            categoryId: self.$category.id,
            createdAt: self.createdAt,
            modifiedAt: self.lastUpdated
        )
    }
}
