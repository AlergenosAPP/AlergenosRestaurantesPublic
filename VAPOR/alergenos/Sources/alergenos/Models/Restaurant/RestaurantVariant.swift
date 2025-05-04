import Fluent
import Vapor


final class RestaurantVariant: Model, @unchecked Sendable, Content {
    static let schema = "restaurants_variants"
    
    @ID(key: .id)
    var id: UUID?
    
    @Parent(key: "restaurant_id")
    var restaurant: Restaurant
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "address")
    var address: String
    
    @Field(key: "latitude")
    var latitude: Double
    
    @Field(key: "longitude")
    var longitude: Double
    
    @OptionalField(key: "phone_number")
    var phoneNumber: Int?
    
    @OptionalField(key: "mail")
    var mail: String?
    
    @Timestamp(key: "created_at", on: .create)
    var createdAt: Date?
    @Timestamp(key: "last_updated", on: .update)
    var modifiedAt: Date?
    
    init(){}
    
    init(
        restaurantId: Restaurant.IDValue,
        name: String,
        address: String,
        latitude: Double,
        longitude: Double,
        phoneNumber: Int?,
        mail: String?
    ){
        self.$restaurant.id = restaurantId
        self.name = name
        self.address = address
        self.latitude = latitude
        self.longitude = longitude
        self.phoneNumber = phoneNumber
        self.mail = mail
    }
}
