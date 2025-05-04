import SwiftUI

struct SafeAndTraceDishesSectionView: View {
    let categories: [DishCategory]
    let safeAndTraceDishesByCategory: [UUID: (safe: [Dish], trace: [Dish])]

    var body: some View {
        ForEach(categories, id: \.id) { category in
            let safeDishes = safeAndTraceDishesByCategory[category.id]?.safe ?? []
            let traceDishes = safeAndTraceDishesByCategory[category.id]?.trace ?? []

            if !safeDishes.isEmpty || !traceDishes.isEmpty {
                VStack(alignment: .leading) {
                    Text(category.name ?? "")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.horizontal, 16)

                    ForEach(safeDishes) { dish in
                        DishCard(dish: dish)
                            .padding(.horizontal, 16)
                    }

                    ForEach(traceDishes) { dish in
                        DishCard(dish: dish)
                            .padding(.horizontal, 16)
                    }
                }
            }
        }
    }
}
