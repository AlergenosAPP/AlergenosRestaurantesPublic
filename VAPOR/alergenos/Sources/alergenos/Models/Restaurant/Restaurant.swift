import Fluent
import Vapor


final class Restaurant: Model, @unchecked Sendable, Content {
    static let schema = "restaurants"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "description")
    var description: String
    
    @Field(key: "photo_logo")
    var photoLogo: String
    
    @Field(key: "photo_background")
    var photoBackground: String
    
    @Field(key: "sponsored")
    var sponsored: Int
    
    @Field(key: "price")
    var price: Int
    
    @Siblings(through: RestaurantCategoryPivot.self, from: \.$restaurant, to: \.$category)
    var categories: [RestaurantCategory]
    
    @Children(for: \.$restaurant)
    var dishes: [Dish]
    
    @Timestamp(key: "created_at", on: .create)
    var createdAt: Date?
    @Timestamp(key: "last_updated", on: .update)
    var modifiedAt: Date?
    
    init(){}
    
    init(name: String, description: String, sponsored: Int, price: Int, photoLogo: String, photoBackground: String){
        self.name = name
        self.description = description
        self.sponsored = sponsored
        self.price = price
        self.photoLogo = "images/restaurants/" + photoLogo
        self.photoBackground = "images/restaurants/" + photoBackground
    }
}
