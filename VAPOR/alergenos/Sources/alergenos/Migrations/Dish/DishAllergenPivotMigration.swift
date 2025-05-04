import Fluent
import Vapor

struct DishAllergenPivotMigration: AsyncMigration {
    func prepare(on database: any Database) async throws {
        try await database.schema(DishAllergenPivot.schema)
            .id()
            .field("dish_id", .uuid, .required, .references(Dish.schema, "id", onDelete: .cascade))
            .field("allergen_id", .uuid, .required, .references(Allergen.schema, "id", onDelete: .cascade))
            .unique(on: "dish_id", "allergen_id")
            .field("contains_allergen", .bool, .required)
            .field("may_contain_allergen", .bool, .required)
        
            .field("created_at", .datetime)
            .field("last_updated", .datetime)
            .create()
    }

    func revert(on database: any Database) async throws {
        try await database.schema(DishAllergenPivot.schema).delete()
    }
}
