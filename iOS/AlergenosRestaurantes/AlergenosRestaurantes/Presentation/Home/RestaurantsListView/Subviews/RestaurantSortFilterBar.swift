import SwiftUI

struct RestaurantSortFilterBar: View {
    @EnvironmentObject private var homeViewModel: HomeViewModel
    @State private var showSortSheet = false
    @State private var showPriceDialog = false
    @State private var showTypeSheet = false

    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    
                    Button(action: {
                        showTypeSheet = true
                    }) {
                        HStack(spacing: 4) {
                            Text("Tipo de comida")
                            Image(systemName: "chevron.down")
                        }
                        .font(.subheadline)
                        .foregroundColor(.primary)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                        .background(Color.gray.opacity(0.15))
                        .clipShape(Capsule())
                    }
                    .sheet(isPresented: $showTypeSheet) {
                        FoodTypeSheet(
                            isPresented: $showTypeSheet,
                            selectedCategories: Binding(
                                get: { homeViewModel.selectedCategories },
                                set: { homeViewModel.selectedCategories = $0 }
                            ),
                            categories: homeViewModel.categories
                        )
                    }
                    .padding(.leading, 16)

                    Button(action: {
                        showSortSheet = true
                    }) {
                        HStack(spacing: 4) {
                            Text("Ordenar por")
                            Image(systemName: "chevron.down")
                        }
                        .font(.subheadline)
                        .foregroundColor(.primary)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                        .background(Color.gray.opacity(0.15))
                        .clipShape(Capsule())
                    }
                    .sheet(isPresented: $showSortSheet) {
                        SortOptionsSheet(
                            isPresented: $showSortSheet,
                            selectedOption: homeViewModel.sortOption,
                            onSelect: { option in
                                homeViewModel.sort(by: option)
                            }
                        )
                    }

                    Button(action: {
                        showPriceDialog = true
                    }) {
                        HStack(spacing: 4) {
                            Text("Precio")
                            Image(systemName: "chevron.down")
                        }
                        .font(.subheadline)
                        .foregroundColor(.primary)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                        .background(Color.gray.opacity(0.15))
                        .clipShape(Capsule())
                    }
                    .sheet(isPresented: $showPriceDialog) {
                        PriceSortSheet(
                            isPresented: $showPriceDialog,
                            selectedLevels: Binding(
                                get: { homeViewModel.selectedPriceLevels },
                                set: { homeViewModel.selectedPriceLevels = $0 }
                            )
                        )
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
