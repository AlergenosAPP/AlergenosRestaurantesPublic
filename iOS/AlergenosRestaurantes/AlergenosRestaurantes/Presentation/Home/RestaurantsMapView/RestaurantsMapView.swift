import SwiftUI
import MapKit

struct RestaurantsMapView: View {
    @EnvironmentObject private var homeViewModel: HomeViewModel
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.appBackground.ignoresSafeArea()
                
                VStack(alignment: .leading ,spacing: 8) {
                    HStack(spacing: 8) { // <--- Reducimos espacio aquí
                        SearchHeader(
                            searchText: searchBinding,
                            onCancel: cancelSearch
                        )
                        RefreshButton()
                    }
                    
                    RestaurantTypeFilterHeader()
                    
                    MapView()
                }
            }
            .navigationBarHidden(true)
        }
    }
    
    private var searchBinding: Binding<String> {
        Binding(
            get: { homeViewModel.searchText },
            set: { homeViewModel.searchText = $0 }
        )
    }
    
    private func cancelSearch() {
        withAnimation {
            homeViewModel.searchText = ""
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}
