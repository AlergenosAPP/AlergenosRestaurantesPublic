import Fluent
import Vapor

struct DishCategoryMigration: AsyncMigration{
    func prepare(on database: any Database) async throws {
        try await database.schema(DishCategory.schema)
            .id()
            .field("name", .string, .required)
            .field("order", .int, .required)
            .field("created_at", .datetime, .required)
            .field("last_updated", .datetime, .required)
            .create()
    }
    
    func revert(on database: any Database) async throws {
        try await database.schema(DishCategory.schema).delete()
    }
}
