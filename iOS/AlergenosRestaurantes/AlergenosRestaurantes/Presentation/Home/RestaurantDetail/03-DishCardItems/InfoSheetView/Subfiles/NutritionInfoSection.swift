import SwiftUI

struct NutritionInfoSection: View {
    let dish: Dish
    @Binding var isExpanded: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            Button {
                withAnimation(.easeOut(duration: 0.2)) {
                    isExpanded.toggle()
                }
            } label: {
                HStack {
                    Text("Información nutricional")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.textPrimary)
                    
                    Spacer()
                    
                    Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                        .foregroundColor(.primaryAction)
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 8)
            }
            
            if isExpanded {
                NutritionDetailsView(dish: dish)
                    .transition(.opacity.combined(with: .move(edge: .top)))
            }
        }
    }
}

#if DEBUG
import SwiftUI

struct NutritionInfoSection_Previews: PreviewProvider {
    static var previews: some View {
        NutritionInfoSectionPreviewWrapper()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray.opacity(0.1))
    }
}

private struct NutritionInfoSectionPreviewWrapper: View {
    @State private var isExpanded = true

    var body: some View {
        NutritionInfoSection(
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
            ),
            isExpanded: $isExpanded
        )
    }
}
#endif
