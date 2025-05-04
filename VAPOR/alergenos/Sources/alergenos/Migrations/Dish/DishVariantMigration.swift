import Fluent
import Vapor

struct DishVariantMigration: AsyncMigration{
    func prepare(on database: any Database) async throws {
        try await database
            .schema(DishVariant.schema)
            .id()
            .field("original_dish_id", .uuid, .required, .references("dishes", "id"))
            .field("name", .string, .required)
            .field("ingredients", .string, .required)
            
            .field("created_at", .datetime, .required)
            .field("last_updated", .datetime, .required)
            .create()
    }
    
    func revert(on database: any Database) async throws {
        try await database.schema(DishVariant.schema).delete()
    }
}
