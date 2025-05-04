import Fluent
import Vapor

struct DishMigration: AsyncMigration{
    func prepare(on database: any Database) async throws {
        try await database.schema(Dish.schema)
            .id()
            .field("restaurant_id", .uuid, .required, .references("restaurants", "id"))
            .field("name", .string, .required)
            .field("photo", .string, .required)
            .field("description", .string, .required)
            .field("ingredients", .string, .required)
            .field("dish_category_id", .uuid, .required, .references("dishes_category", "id"))
            .field("energy_kj", .int)
            .field("energy_kcal", .int)
            .field("fat", .double)
            .field("saturated_fat", .double)
            .field("carbohydrates", .double)
            .field("sugars", .double)
            .field("proteins", .double)
            .field("fibers", .double)
            .field("salt", .double)
            .field("is_vegan", .bool, .required)
            .field("is_vegetarian", .bool, .required)
            .field("is_spicy", .bool, .required)

            .field("created_at", .datetime, .required)
            .field("last_updated", .datetime, .required)
            .create()
    }
    
    func revert(on database: any Database) async throws {
        try await database.schema(Dish.schema).delete()
    }
}
