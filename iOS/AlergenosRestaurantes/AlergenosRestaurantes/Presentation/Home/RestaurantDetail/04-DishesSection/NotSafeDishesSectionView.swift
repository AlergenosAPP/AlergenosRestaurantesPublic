import SwiftUI

struct NotSafeDishesSectionView: View {
    let categories: [DishCategory]
    let notSafeDishesByCategory: [UUID: [Dish]]

    var body: some View {
        Group {
            if !notSafeDishesByCategory.isEmpty {
                VStack(alignment: .leading) {
                    Text("Platos que contienen el alergeno")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.horizontal, 16)
                        .padding(.top, 32)

                    ForEach(categories, id: \.id) { category in
                        if let dishes = notSafeDishesByCategory[category.id], !dishes.isEmpty {
                            VStack(alignment: .leading) {
                                Text(category.name ?? "")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .padding(.horizontal, 16)
                                    .padding(.top, 8)

                                ForEach(dishes) { dish in
                                    DishCard(dish: dish)
                                        .padding(.horizontal, 16)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
