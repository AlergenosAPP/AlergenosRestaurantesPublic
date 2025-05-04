import Fluent
import Vapor


final class DishVariant: Model, @unchecked Sendable, Content {
    static let schema = "dishes_variants"
    
    @ID(key: .id)
    var id: UUID?
    
    @Parent(key: "original_dish_id")
    var originalDish: Dish
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "ingredients")
    var ingredients: String
    
    @Siblings(through: DishVariantAllergenPivot.self, from: \.$dishVariant, to: \.$allergen)
    var allergens: [Allergen]
    
    @Timestamp(key: "created_at", on: .create)
    var createdAt: Date?
    @Timestamp(key: "last_updated", on: .update)
    var modifiedAt: Date?
    
    init(){}
    
    init(originalDishId: Dish.IDValue, name: String, ingredients: String){
        self.$originalDish.id = originalDishId
        self.name = name
        self.ingredients = ingredients
    }
}
