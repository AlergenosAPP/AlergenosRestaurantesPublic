import SwiftUI

struct DishesListView: View {
    @Bindable var viewModel: DetailRestaurantModel

    var body: some View {
        LazyVStack(alignment: .leading, spacing: 16) {
            let categories = viewModel.dishCategories.sorted { ($0.order ?? 0) < ($1.order ?? 0) }
            let filteredCategories = viewModel.selectedCategoryIds.isEmpty ? categories : categories.filter { viewModel.selectedCategoryIds.contains($0.id) }

            SafeAndTraceDishesSectionView(
                categories: filteredCategories,
                safeAndTraceDishesByCategory: viewModel.safeAndTraceDishesByCategory()
            )
            .transition(.opacity.combined(with: .move(edge: .top)))

            NotSafeDishesSectionView(
                categories: filteredCategories,
                notSafeDishesByCategory: viewModel.notSafeDishesByCategory()
            )
            .transition(.opacity.combined(with: .move(edge: .top)))
        }
    }
}
