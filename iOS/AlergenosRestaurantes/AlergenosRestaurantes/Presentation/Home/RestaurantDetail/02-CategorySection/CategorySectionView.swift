import SwiftUI

struct CategorySectionView: View {
    let categories: [DishCategory]
    let selectedCategoryIds: [UUID]
    let onToggleCategory: (UUID) -> Void
    let onResetSelection: () -> Void

    var body: some View {
        VStack {
            categorySelector

            if !selectedCategoryIds.isEmpty {
                HStack {
                    Spacer()
                    Button(action: onResetSelection) {
                        Text("Restablecer")
                            .fontWeight(.bold)
                            .font(.subheadline)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .background(Color.lightGray90)
                            .foregroundColor(.black)
                            .cornerRadius(20)
                    }
                    .padding(.trailing, 16)
                    .padding(.top, 8)
                }
            }
        }
    }

    private var categorySelector: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(categories.sorted { ($0.order ?? 0) < ($1.order ?? 0) }, id: \.id) { category in
                    CategoryFilterButton(
                        category: category,
                        isSelected: selectedCategoryIds.contains(category.id),
                        action: {
                            onToggleCategory(category.id)
                        }
                    )
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .animation(.easeInOut(duration: 0.3), value: selectedCategoryIds)
        }
    }
}


#if DEBUG
import SwiftUI

struct CategorySectionView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySectionPreviewWrapper()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray.opacity(0.1))
    }
}

private struct CategorySectionPreviewWrapper: View {
    @State private var selectedCategoryIds: [UUID] = []

    private let mockCategories: [DishCategory] = [
        DishCategory(id: UUID(), name: "Hamburguesas", order: 1, createdAt: nil, modifiedAt: nil),
        DishCategory(id: UUID(), name: "Ensaladas", order: 2, createdAt: nil, modifiedAt: nil),
        DishCategory(id: UUID(), name: "Postres", order: 3, createdAt: nil, modifiedAt: nil)
    ]

    var body: some View {
        CategorySectionView(
            categories: mockCategories,
            selectedCategoryIds: selectedCategoryIds,
            onToggleCategory: { categoryId in
                if let index = selectedCategoryIds.firstIndex(of: categoryId) {
                    selectedCategoryIds.remove(at: index)
                } else {
                    selectedCategoryIds.append(categoryId)
                }
            },
            onResetSelection: {
                selectedCategoryIds.removeAll()
            }
        )
    }
}
#endif
