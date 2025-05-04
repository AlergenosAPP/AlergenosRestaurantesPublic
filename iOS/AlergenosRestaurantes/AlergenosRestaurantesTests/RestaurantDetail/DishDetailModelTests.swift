import Testing
import Foundation
@testable import AlergenosRestaurantes

struct DishDetailModelTests {
    
    @Test
    func imageURL_shouldBeCorrect() {
        let model = DishDetailModel.mock
        
        #expect(model.imageURL?.absoluteString == "http://localhost:8080/https://via.placeholder.com/600x400")
    }
    
    @Test
    func name_shouldReturnDishName() {
        let model = DishDetailModel.mock
        
        #expect(model.name == "Hamburguesa Deluxe")
    }
    
    @Test
    func ingredients_shouldReturnNonEmptyString() {
        let model = DishDetailModel.mock
        
        #expect(model.ingredients == "Carne 100% vacuno, pan brioche, lechuga, tomate, cebolla caramelizada, queso cheddar.")
    }
    
    @Test
    func containsAllergens_shouldParseCorrectly() {
        let model = DishDetailModel.mock
        
        #expect(!model.containsAllergens.isEmpty)
        #expect(model.containsAllergens.allSatisfy { !$0.isPreference })
    }
    
    @Test
    func possibleTraces_shouldParseCorrectly() {
        let model = DishDetailModel.mock
        
        #expect(!model.possibleTraces.isEmpty)
        #expect(model.possibleTraces.allSatisfy { !$0.isPreference })
    }
    
    @Test
    func dietaryOptions_shouldContainSpicy() {
        let model = DishDetailModel.mock
        
        #expect(model.dietaryOptions.contains(.spicy))
        #expect(!model.dietaryOptions.contains(.vegetarian))
        #expect(!model.dietaryOptions.contains(.vegan))
    }
    
    @Test
    func hasDietaryOptions_shouldReturnTrue() {
        let model = DishDetailModel.mock
        
        #expect(model.hasDietaryOptions == true)
    }
    
    @Test
    func ingredients_shouldBeNil_whenEmpty() {
        var dish = DishDetailModel.mock.dish
        dish = Dish(
            id: dish.id,
            name: dish.name,
            photo: dish.photo,
            description: dish.description,
            ingredients: "   ",
            dishCategory: dish.dishCategory,
            energyKj: dish.energyKj,
            energyKcal: dish.energyKcal,
            fat: dish.fat,
            saturatedFat: dish.saturatedFat,
            carbohydrates: dish.carbohydrates,
            sugars: dish.sugars,
            fibers: dish.fibers,
            proteins: dish.proteins,
            salt: dish.salt,
            allergens: dish.allergens,
            traces: dish.traces,
            hasTraces: dish.hasTraces,
            hasAllergen: dish.hasAllergen,
            isVegetarian: dish.isVegetarian,
            isVegan: dish.isVegan,
            isSpicy: dish.isSpicy,
            createdAt: dish.createdAt,
            modifiedAt: dish.modifiedAt
        )
        
        let model = DishDetailModel(dish: dish)
        
        #expect(model.ingredients == nil)
    }
}
