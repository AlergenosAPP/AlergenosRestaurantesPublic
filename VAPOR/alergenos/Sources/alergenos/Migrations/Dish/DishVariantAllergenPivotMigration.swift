import Fluent
import Vapor

struct DishVariantAllergenPivotMigration: AsyncMigration {
    func prepare(on database: any Database) async throws {
        try await database.schema(DishVariantAllergenPivot.schema)
            .id()
            .field("dish_variant_id", .uuid, .required, .references(DishVariant.schema, "id", onDelete: .cascade))
            .field("allergen_id", .uuid, .required, .references(Allergen.schema, "id", onDelete: .cascade))
            .unique(on: "dish_variant_id", "allergen_id")
            .field("contains_allergen", .bool, .required)
            .field("may_contain_allergen", .bool, .required)
        
            .field("created_at", .datetime)
            .field("last_updated", .datetime)
            .create()
    }

    func revert(on database: any Database) async throws {
        try await database.schema(DishVariantAllergenPivot.schema).delete()
    }
}
