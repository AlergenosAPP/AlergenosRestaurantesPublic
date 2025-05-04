import SwiftUI
import CoreLocation

struct RestaurantsListView: View {
    @EnvironmentObject private var homeViewModel: HomeViewModel
    @Environment(AllergenPreferencesStore.self) private var prefs
    @State private var animateFilterHeader = false
    @State private var hasLoadedRestaurants = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.appBackground.ignoresSafeArea()
                
                VStack(alignment: .leading, spacing: 8) {
                    SearchHeader(
                        searchText: searchBinding,
                        onCancel: cancelSearch
                    )
                    
                    ScrollView(showsIndicators: false) {
                        LazyVStack(alignment: .leading, pinnedViews: [.sectionHeaders]) {
                            VStack(alignment: .leading, spacing: 8) {
                                if animateFilterHeader {
                                    Text("¿Qué te apetece hoy?")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                        .padding(.horizontal)
                                        .padding(.top)
                                        .transition(.move(edge: .top).combined(with: .opacity))
                                }

                                if !homeViewModel.categories.isEmpty {
                                    RestaurantTypeFilterHeader()
                                        .scaleEffect(animateFilterHeader ? 1 : 0.95)
                                        .opacity(animateFilterHeader ? 1 : 0)
                                        .onAppear {
                                            withAnimation(.interpolatingSpring(stiffness: 100, damping: 12)) {
                                                animateFilterHeader = true
                                            }
                                        }
                                }
                            }
                            .zIndex(1)
                            
                            Section {
                                VStack(alignment: .leading) {
                                    Text("Establecimientos")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .padding(.leading)
                                    
                                    if homeViewModel.isLoadingRestaurants {
                                        VStack {
                                            Spacer()
                                            ProgressView("Cargando restaurantes...")
                                            Spacer()
                                        }
                                        .frame(maxWidth: .infinity)
                                    } else if homeViewModel.filteredRestaurants.isEmpty {
                                        emptyStateView
                                    } else {
                                        restaurantsList
                                    }
                                }
                            } header: {
                                RestaurantSortFilterBar()
                                    .padding(.vertical, 8)
                                    .background(Color.appBackground)
                            }
                        }
                    }
                    .refreshable {
                        await homeViewModel.refresh(allergenIds: prefs.selected.map(\.rawValue))
                    }
                    .onChange(of: prefs.selected) { oldSelected, newSelected in
                        Task {
                            await homeViewModel.refresh(allergenIds: newSelected.map(\.rawValue))
                        }
                    }
                    .task {
                        if !hasLoadedRestaurants {
                            await homeViewModel.refresh(allergenIds: prefs.selected.map(\.rawValue))
                            hasLoadedRestaurants = true
                        }
                    }
                    .animation(.easeInOut(duration: 0.3), value: homeViewModel.filteredRestaurants)
                }
            }
            .navigationDestination(for: Restaurant.self) { restaurant in
                let distance = calculateDistance(for: restaurant)
                DetailRestaurantView(restaurantId: restaurant.id.uuidString, distance: distance)
            }
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
    
    private func calculateDistance(for restaurant: Restaurant) -> Double? {
        guard let userLocation = homeViewModel.locationManager.userLocation else { return nil }
        let restaurantLocation = CLLocation(latitude: restaurant.latitude, longitude: restaurant.longitude)
        return restaurantLocation.distance(from: userLocation) / 1000.0
    }
    
    private var emptyStateView: some View {
        VStack {
            Spacer()
            Text("No se encontraron establecimientos o restaurantes con los filtros seleccionados.")
                .font(.body)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
        .frame(maxWidth: .infinity)
    }
    
    private var restaurantsList: some View {
        LazyVStack {
            ForEach(Array(homeViewModel.filteredRestaurants.enumerated()), id: \.element.id) { index, restaurant in
                NavigationLink(value: restaurant) {
                    RestaurantRowView(
                        restaurant: restaurant,
                        distanceKm: calculateDistance(for: restaurant)

                    )
                }
                .buttonStyle(PlainButtonStyle())
                .padding(.horizontal)
                .scaleEffect(animateFilterHeader ? 1 : 0.95)
                .opacity(animateFilterHeader ? 1 : 0)
                .animation(.easeOut(duration: 0.3).delay(Double(index) * 0.05), value: animateFilterHeader)
            }
        }
    }
}
