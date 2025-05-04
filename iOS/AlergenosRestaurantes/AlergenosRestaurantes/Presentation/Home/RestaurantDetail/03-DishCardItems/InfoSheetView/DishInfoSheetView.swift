import SwiftUI

struct DishInfoSheetView: View {
    let model: DishDetailModel
    @State private var isNutritionExpanded = true
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                DragIndicator()

                DishImageSection(photoURL: model.imageURL)

                DishNameSection(name: model.name)

                Divider()
                    .padding(.horizontal, 24)

                NutritionInfoSection(dish: model.dish, isExpanded: $isNutritionExpanded)

                if let ingredients = model.ingredients {
                    IngredientsSection(ingredients: ingredients)
                }

                AllergensSection(
                    containsAllergens: model.containsAllergens,
                    possibleTraces: model.possibleTraces
                )

                if model.hasDietaryOptions {
                    DietaryOptionsSection(dietaryOptions: model.dietaryOptions)
                }
            }
            .padding(.bottom, 24)
        }
        .background(Color.appBackground.ignoresSafeArea())
    }
}

#if DEBUG
import SwiftUI

struct DishInfoSheetView_Previews: PreviewProvider {
    static var previews: some View {
        DishInfoSheetView(
            model: DishDetailModel.mock
        )
        .previewLayout(.sizeThatFits)
        .background(Color.gray.opacity(0.1))
    }
}
#endif
