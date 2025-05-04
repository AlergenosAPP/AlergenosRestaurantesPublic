import Fluent
import Vapor


final class DishCategory: Model, @unchecked Sendable, Content {
    static let schema = "dishes_category"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "order")
    var order: Int
    
    @Timestamp(key: "created_at", on: .create)
    var createdAt: Date?
        
    @Timestamp(key: "last_updated", on: .update)
    var modifiedAt: Date?
    
    init(){}
    
    init(name: String, order: Int){
        self.name = name
        self.order = order
    }
}
