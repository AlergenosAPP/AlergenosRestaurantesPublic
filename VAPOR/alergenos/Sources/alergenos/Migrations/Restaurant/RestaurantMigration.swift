import Fluent
import Vapor

struct RestaurantMigration: AsyncMigration{
    func prepare(on database: any Database) async throws {
        try await database
            .schema(Restaurant.schema)
            .id()
            .field("name", .string, .required)
            .field("description", .string, .required)
            .field("photo_logo", .string, .required)
            .field("photo_background", .string, .required)
            .field("sponsored", .int, .required)
            .field("price", .int, .required)
            .field("created_at", .datetime, .required)
            .field("last_updated", .datetime, .required)
            .create()
    }
    
    func revert(on database: any Database) async throws {
        try await database.schema(Restaurant.schema).delete()
    }
}
