import SwiftUI

struct NutritionDetailsView: View {
    let dish: Dish
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            NutritionRow(title: "Valor energético (Kj)", value: dish.energyKj.map { Double($0) }, unit: "kj")
            NutritionRow(title: "Valor energético (Kcal)", value: dish.energyKcal.map { Double($0) }, unit: "kcal")
            
            NutritionRow(title: "Grasas", value: dish.fat, unit: "g")
            SubNutritionRow(title: "de las cuales saturadas", value: dish.saturatedFat, unit: "g")
            
            NutritionRow(title: "Hidratos de carbono", value: dish.carbohydrates, unit: "g")
            SubNutritionRow(title: "de los cuales azúcares", value: dish.sugars, unit: "g")
            
            NutritionRow(title: "Fibra alimentaria", value: dish.fibers, unit: "g")
            NutritionRow(title: "Proteínas", value: dish.proteins, unit: "g")
            NutritionRow(title: "Sal", value: dish.salt, unit: "g")
        }
        .padding(.horizontal, 24)
        .padding(.top, 8)
    }
}


#if DEBUG
import SwiftUI

struct NutritionDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NutritionDetailsView(
            dish: Dish(
                id: UUID(),
                name: "Hamburguesa Completa",
                photo: "https://via.placeholder.com/600x400",
                description: "Una hamburguesa deliciosa con todo.",
                ingredients: "Carne, pan, lechuga, tomate, queso.",
                dishCategory: DishCategory(
                    id: UUID(),
                    name: "Hamburguesas",
                    order: 1,
                    createdAt: nil,
                    modifiedAt: nil
                ),
                energyKj: 2500,
                energyKcal: 600,
                fat: 30,
                saturatedFat: 12,
                carbohydrates: 40,
                sugars: 5,
                fibers: 4,
                proteins: 25,
                salt: 2,
                allergens: [],
                traces: [],
                hasTraces: false,
                hasAllergen: false,
                isVegetarian: false,
                isVegan: false,
                isSpicy: false,
                createdAt: Date(),
                modifiedAt: Date()
            )
        )
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.gray.opacity(0.1))
    }
}
#endif
