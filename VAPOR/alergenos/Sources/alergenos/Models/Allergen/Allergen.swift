import Fluent
import Vapor


final class Allergen: Model, @unchecked Sendable, Content {
    static let schema = "allergens"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "allergen_number")
    var allergenNumber: Int
    
    @Field(key: "name")
    var name: String
    
    @Siblings(through: DishAllergenPivot.self, from: \.$allergen, to: \.$dish)
    var dishes: [Dish]
    
    @Siblings(through: DishVariantAllergenPivot.self, from: \.$allergen, to: \.$dishVariant)
    var dishesVariants: [DishVariant]
    
    @Timestamp(key: "created_at", on: .create)
    var createdAt: Date?
        
    @Timestamp(key: "last_updated", on: .update)
    var modifiedAt: Date?
    
    init(){}
    
    init(allergenNumber: Int, name: String){
        self.allergenNumber = allergenNumber
        self.name = name
    }
}
