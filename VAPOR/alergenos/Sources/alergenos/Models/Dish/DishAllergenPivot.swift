import Fluent
import Vapor

final class DishAllergenPivot: Model, @unchecked Sendable, Content {
    static let schema = "dish_allergen_pivot"
    
    @ID(key: .id)
    var id: UUID?
    
    @Parent(key: "dish_id")
    var dish: Dish
    @Parent(key: "allergen_id")
    var allergen: Allergen
    
    @Field(key: "contains_allergen")
    var containsAllergen: Bool
    @Field(key: "may_contain_allergen")
    var mayContain: Bool
    
    
    @Timestamp(key: "created_at", on: .create)
    var createdAt: Date?
    @Timestamp(key: "last_updated", on: .update)
    var lastUpdated: Date?
    
    init() { }
    
    init(id: UUID? = nil, dishId: Dish.IDValue, allergenId: Allergen.IDValue, containsAllergen: Bool, mayContain: Bool) {
        self.$dish.id = dishId
        self.$allergen.id = allergenId
        self.containsAllergen = containsAllergen
        self.mayContain = mayContain
    }
}
