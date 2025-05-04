import SwiftUI
import MapKit

struct MapView: View {
    @EnvironmentObject private var homeViewModel: HomeViewModel

    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            // MARK: - Mapa con anotaciones
            Map(position: $homeViewModel.cameraPosition) {
                UserAnnotation()
                ForEach(Array(homeViewModel.filteredRestaurants.enumerated()), id: \.element.id) { index, restaurant in
                    Annotation(
                        restaurant.name,
                        coordinate: CLLocationCoordinate2D(latitude: restaurant.latitude, longitude: restaurant.longitude)
                    ) {
                        AnnotationViewWithAppear(restaurant: restaurant)
                            .id("\(homeViewModel.refreshUUID.uuidString)-\(restaurant.id)")
                    }
                }
            }
            .onMapCameraChange { context in
                homeViewModel.visibleMapCenter = context.region.center
            }
            .mapControls {
                MapCompass().mapControlVisibility(.hidden)
                MapScaleView().mapControlVisibility(.hidden)
            }
            .animation(.easeInOut(duration: 0.5), value: homeViewModel.cameraPosition)
            
            // MARK: - Barra superior de filtros
            VStack {
                HStack {
                    RestaurantMapSortFilterBar()
                        .padding(.top, 16)
                        .padding(.leading, 16)
                    Spacer()
                }
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)

            // MARK: - Botón para centrar en ubicación del usuario
            if homeViewModel.locationManager.isLocationAuthorized {
                Button {
                    Task {
                        await homeViewModel.centerCameraOnUserLocation()
                    }
                } label: {
                    Image(systemName: "location.fill")
                        .font(.title2)
                        .padding()
                        .background(Color.appBackground)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.primary.opacity(0.3), lineWidth: 1)
                        )
                }
                .padding(.top, 16)
                .padding(.trailing, 16)
            }

            // MARK: - Tarjeta de restaurante seleccionado
            if homeViewModel.selectedRestaurant != nil {
                RestaurantCardView {
                    withAnimation {
                        homeViewModel.selectedRestaurant = nil
                    }
                }
            }
        }
        .transition(.opacity.combined(with: .move(edge: .leading)))
        .onAppear {
            Task {
                if !homeViewModel.hasCenteredMap {
                    await homeViewModel.centerCameraOnUserLocation()
                    homeViewModel.hasCenteredMap = true
                } else {
                    homeViewModel.centerCameraOnVisibleCenter()
                }
            }
        }
    }
    
    private func calculateDistance(for restaurant: Restaurant) -> Double? {
        guard let userLocation = homeViewModel.locationManager.userLocation else { return nil }
        let restaurantLocation = CLLocation(latitude: restaurant.latitude, longitude: restaurant.longitude)
        return restaurantLocation.distance(from: userLocation) / 1000.0
    }
}

extension Array {
    func enumeratedArray() -> [(offset: Int, element: Element)] {
        enumerated().map { (offset: $0.offset, element: $0.element) }
    }
}
