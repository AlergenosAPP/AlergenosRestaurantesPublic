import SwiftUI

struct CategoryFilterButton: View {
    let category: DishCategory
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(category.name ?? "")
                .font(.footnote)
                .fontWeight(.medium)
                .foregroundColor(.black)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(isSelected ? Color.primaryAction : Color.lightGray)
                .clipShape(Capsule())
        }
    }
}

#if DEBUG
import SwiftUI

struct CategoryFilterButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            CategoryFilterButton(
                category: DishCategory(
                    id: UUID(),
                    name: "Hamburguesas",
                    order: 1,
                    createdAt: nil,
                    modifiedAt: nil
                ),
                isSelected: true,
                action: { print("Hamburguesas tapped") }
            )

            CategoryFilterButton(
                category: DishCategory(
                    id: UUID(),
                    name: "Ensaladas",
                    order: 2,
                    createdAt: nil,
                    modifiedAt: nil
                ),
                isSelected: false,
                action: { print("Ensaladas tapped") }
            )
        }
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.gray.opacity(0.1))
    }
}
#endif
