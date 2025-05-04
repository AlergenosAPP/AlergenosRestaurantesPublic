import Fluent
import Vapor


final class RestaurantCategory: Model, @unchecked Sendable, Content {
    static let schema = "restaurants_categories"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "photo")
    var photo: String
    
    @Siblings(through: RestaurantCategoryPivot.self, from: \.$category, to: \.$restaurant)
    var restaurants: [Restaurant]
    
    @Timestamp(key: "created_at", on: .create)
    var createdAt: Date?
    @Timestamp(key: "last_updated", on: .update)
    var modifiedAt: Date?
    
    init(){}
    
    init(name: String, photo: String){
        self.name = name
        self.photo = "images/restaurants/categories/"+photo
    }
}
