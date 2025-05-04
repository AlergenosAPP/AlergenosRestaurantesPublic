import Fluent
import Vapor

struct RestaurantVariantMigration: AsyncMigration{
    func prepare(on database: any Database) async throws {
        try await database
            .schema(RestaurantVariant.schema)
            .id()
            .field("restaurant_id", .uuid, .required, .references("restaurants", "id"))
            .field("name", .string, .required)
            .field("address", .string, .required)
            .field("latitude", .double, .required)
            .field("longitude", .double, .required)
            .field("phone_number", .int)
            .field("mail", .string)
            
            .field("created_at", .datetime, .required)
            .field("last_updated", .datetime, .required)
            .create()
    }
    
    func revert(on database: any Database) async throws {
        try await database.schema(RestaurantVariant.schema).delete()
    }
}
