import Fluent
import Vapor

extension Dish {
    // Estructura para crear un Dish
    struct Create: Content, Validatable {
        let restaurantId: UUID
        let name: String
        let photo: String
        let description: String
        let ingredients: String
        let dishCategoryId: UUID
        let energyKj: Int
        let energyKcal: Int
        let fat: Double
        let saturatedFat: Double
        let carbohydrates: Double
        let sugars: Double
        let proteins: Double
        let fibers: Double
        let salt: Double
        let isVegan: Bool
        let isVegetarian: Bool
        let isSpicy: Bool


        static func validations(_ validations: inout Validations) {
            validations.add("name", as: String.self, is: .count(2...100), required: true)
            validations.add("photo", as: String.self, required: true)
            validations.add("description", as: String.self, is: .count(5...500), required: true)
            validations.add("ingredients", as: String.self, is: .count(5...1000), required: true)
            // Puedes agregar más validaciones si es necesario.
        }
    }
    
    // Estructura para actualizar un Dish
    struct Update: Content {
        let name: String
        let photo: String
        let description: String
        let ingredients: String
        let dishCategoryId: UUID
        let energyKj: Int?
        let energyKcal: Int?
        let fat: Double?
        let saturatedFat: Double?
        let carbohydrates: Double?
        let sugars: Double?
        let proteins: Double?
        let fibers: Double?
        let salt: Double?
        let isVegan: Bool
        let isVegetarian: Bool
        let isSpicy: Bool
        let hasAllergen: Bool
        let hasTraces: Bool
    }
    
    struct DishCategoryDTO: Content {
        let id: UUID
        let name: String
    }
    
    //DTO para exponer la información de Dish
    struct DTO: Content {
        let id: UUID?
        // let restaurantId: UUID
        let name: String
        let photo: String
        let description: String
        let ingredients: String
        let dishCategory: DishCategoryDTO
        let energyKj: Int?
        let energyKcal: Int?
        let fat: Double?
        let saturatedFat: Double?
        let carbohydrates: Double?
        let sugars: Double?
        let proteins: Double?
        let fibers: Double?
        let salt: Double?
        let isVegan: Bool
        let isVegetarian: Bool
        let isSpicy: Bool
        let hasAllergen: Bool
        let hasTraces: Bool
        let createdAt: Date?
        let modifiedAt: Date?
        let allergens: [Int]
        let traces: [Int]
    }
    
    // Método para convertir un Dish al DTO correspondiente
    func toDTO(on db: any Database, userAllergenIds: [Int]) async throws -> DTO {
        let pivots = try await DishAllergenPivot.query(on: db)
            .filter(\.$dish.$id == self.requireID())
            .with(\.$allergen)
            .all()

        let allergensNums = pivots.filter { $0.containsAllergen }.map { $0.allergen.allergenNumber }
        let tracesNums = pivots.filter { $0.mayContain }.map { $0.allergen.allergenNumber }

        let category = try await self.$dishCategory.get(on: db)

        let hasAllergen = !Set(allergensNums).isDisjoint(with: userAllergenIds)
        let hasTraces = !Set(tracesNums).isDisjoint(with: userAllergenIds)

        return DTO(
            id: self.id,
            name: self.name,
            photo: self.photo,
            description: self.description,
            ingredients: self.ingredients,
            dishCategory: DishCategoryDTO(id: category.id!, name: category.name),
            energyKj: self.energyKj,
            energyKcal: self.energyKcal,
            fat: self.fat,
            saturatedFat: self.saturatedFat,
            carbohydrates: self.carbohydrates,
            sugars: self.sugars,
            proteins: self.proteins,
            fibers: self.fibers,
            salt: self.salt,
            isVegan: self.isVegan,
            isVegetarian: self.isVegetarian,
            isSpicy: self.isSpicy,
            hasAllergen: hasAllergen,
            hasTraces: hasTraces,
            createdAt: self.createdAt,
            modifiedAt: self.modifiedAt,
            allergens: allergensNums,
            traces: tracesNums
        )
    }
}
