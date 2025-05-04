import Fluent
import Vapor

final class DishVariantAllergenPivot: Model, @unchecked Sendable, Content {
    static let schema = "dish_variant_allergen_pivot"
    
    @ID(key: .id)
    var id: UUID?
    
    @Parent(key: "dish_variant_id")
    var dishVariant: DishVariant
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
    
    init(id: UUID? = nil, dishVariantId: DishVariant.IDValue, allergenId: Allergen.IDValue, containsAllergen: Bool, mayContain: Bool) {
        self.$dishVariant.id = dishVariantId
        self.$allergen.id = allergenId
        self.containsAllergen = containsAllergen
        self.mayContain = mayContain
    }
}
