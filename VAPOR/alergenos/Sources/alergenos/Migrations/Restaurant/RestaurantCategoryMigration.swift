import Fluent
import Vapor

struct RestaurantCategoryMigration: AsyncMigration {
    func prepare(on database: any Database) async throws {
        try await database.schema(RestaurantCategory.schema)
            .id()
            .field("name", .string, .required)
            .field("photo", .string, .required)
            .field("created_at", .datetime, .required)
            .field("last_updated", .datetime, .required)
            .create()
    }

    func revert(on database: any Database) async throws {
        try await database.schema(RestaurantCategory.schema).delete()
    }
}
