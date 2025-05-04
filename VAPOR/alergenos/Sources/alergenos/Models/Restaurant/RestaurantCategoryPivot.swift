import Fluent
import Vapor

final class RestaurantCategoryPivot: Model, @unchecked Sendable, Content {
    static let schema = "restaurant_category_pivot"
    
    @ID(key: .id)
    var id: UUID?
    
    @Parent(key: "restaurant_id")
    var restaurant: Restaurant

    @Parent(key: "category_id")
    var category: RestaurantCategory
    
    @Timestamp(key: "created_at", on: .create)
    var createdAt: Date?
    @Timestamp(key: "last_updated", on: .update)
    var lastUpdated: Date?
    
    init() { }
    
    init(id: UUID? = nil, restaurantID: Restaurant.IDValue, categoryID: RestaurantCategory.IDValue) {
        self.$restaurant.id = restaurantID
        self.$category.id = categoryID
    }
}
