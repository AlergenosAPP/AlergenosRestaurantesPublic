import SwiftUI

struct RestaurantMapSortFilterBar: View {
    @EnvironmentObject private var homeViewModel: HomeViewModel
    @State private var showPriceDialog = false

    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    
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
                        .background(Color.appBackground)
                        .clipShape(Capsule())
                        .overlay(Capsule().stroke(Color.primary.opacity(0.3), lineWidth: 1))
                    }
                    .sheet(isPresented: $showPriceDialog) {
                        PriceSortSheet(
                            isPresented: $showPriceDialog,
                            selectedLevels: $homeViewModel.selectedPriceLevels
                        )
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
