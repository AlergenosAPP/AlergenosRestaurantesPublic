import Fluent
import Vapor


final class Dish: Model, @unchecked Sendable, Content {
    static let schema = "dishes"
    
    @ID(key: .id)
    var id: UUID?
    
    @Parent(key: "restaurant_id")
    var restaurant: Restaurant
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "photo")
    var photo: String
    
    @Field(key: "description")
    var description: String
    
    @Field(key: "ingredients")
    var ingredients: String
    
    @Parent(key: "dish_category_id")
    var dishCategory: DishCategory
    
    @OptionalField(key: "energy_kj")
    var energyKj: Int?
    
    @OptionalField(key: "energy_kcal")
    var energyKcal: Int?
    
    @OptionalField(key: "fat")
    var fat: Double?
    
    @OptionalField(key: "saturated_fat")
    var saturatedFat: Double?
    
    @OptionalField(key: "carbohydrates")
    var carbohydrates: Double?
    
    @OptionalField(key: "sugars")
    var sugars: Double?
    
    @OptionalField(key: "proteins")
    var proteins: Double?
    
    @OptionalField(key: "fibers")
    var fibers: Double?
    
    @OptionalField(key: "salt")
    var salt: Double?
    
    @Field(key: "is_vegan")
    var isVegan: Bool
    
    @Field(key: "is_vegetarian")
    var isVegetarian: Bool
    
    @Field(key: "is_spicy")
    var isSpicy: Bool
    
    @Siblings(through: DishAllergenPivot.self, from: \.$dish, to: \.$allergen)
    var allergens: [Allergen]
    
    @Timestamp(key: "created_at", on: .create)
    var createdAt: Date?
    @Timestamp(key: "last_updated", on: .update)
    var modifiedAt: Date?
    
    init(){}
    
    init(restaurantId: Restaurant.IDValue,
         name: String,
         photo: String,
         description: String,
         ingredients: String,
         dishCategoryId: DishCategory.IDValue,
         energyKj: Int?,
         energyKcal: Int?,
         fat: Double?,
         saturatedFat: Double?,
         carbohydrates: Double?,
         sugars: Double?,
         proteins: Double?,
         fibers: Double?,
         salt: Double?,
         isVegan: Bool,
         isVegetarian: Bool,
         isSpicy: Bool){
        
        self.$restaurant.id = restaurantId
        self.name = name
        self.photo = "images/restaurants/" + photo
        self.description = description
        self.ingredients = ingredients
        self.$dishCategory.id = dishCategoryId
        self.energyKj = energyKj
        self.energyKcal = energyKcal
        self.fat = fat
        self.saturatedFat = saturatedFat
        self.carbohydrates = carbohydrates
        self.sugars = sugars
        self.proteins = proteins
        self.fibers = fibers
        self.salt = salt
        self.isVegan = isVegan
        self.isVegetarian = isVegetarian
        self.isSpicy = isSpicy
    }
}
