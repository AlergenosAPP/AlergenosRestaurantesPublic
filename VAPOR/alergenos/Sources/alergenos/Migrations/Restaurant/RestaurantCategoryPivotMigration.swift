import Fluent
import Vapor

struct RestaurantCategoryPivotMigration: AsyncMigration {
    func prepare(on database: any Database) async throws {
        try await database.schema(RestaurantCategoryPivot.schema)
            .id()
            .field("restaurant_id", .uuid, .required, .references(Restaurant.schema, "id", onDelete: .cascade))
            .field("category_id", .uuid, .required, .references(RestaurantCategory.schema, "id", onDelete: .cascade))
            .unique(on: "restaurant_id", "category_id")
            .field("created_at", .datetime)
            .field("last_updated", .datetime)
            .create()
    }

    func revert(on database: any Database) async throws {
        try await database.schema(RestaurantCategoryPivot.schema).delete()
    }
}
