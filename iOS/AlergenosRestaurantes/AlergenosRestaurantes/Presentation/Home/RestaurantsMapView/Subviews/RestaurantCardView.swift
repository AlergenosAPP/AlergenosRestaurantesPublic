import SwiftUI
import CoreLocation

struct RestaurantCardView: View {
    @EnvironmentObject private var homeViewModel: HomeViewModel
    var onClose: () -> Void
    @State private var isShowingNavigationOptions = false
        
    init(onClose: @escaping () -> Void) {
        self.onClose = onClose
    }
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.15)
                .ignoresSafeArea()
                .onTapGesture {
                    onClose()
                }
            
            NavigationLink(
                destination: DetailRestaurantView(
                    restaurantId: homeViewModel.selectedRestaurant?.id.uuidString ?? "",
                    distance: distanceInKm
                )
            ) {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        AsyncImage(url: URL(string: "http://localhost:8080/\(homeViewModel.selectedRestaurant?.restaurantBackground.trimmingCharacters(in: CharacterSet(charactersIn: "/")) ?? "")")) { image in
                            ZStack(alignment: .topLeading) {
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(height: 120)
                                    .clipped()
                                    .cornerRadius(20, corners: [.topLeft, .topRight])
                                
                                VStack(alignment: .leading) {
                                    HStack {
                                        Text(homeViewModel.selectedRestaurant?.categories.compactMap { $0.name }.joined(separator: ", ") ?? "")
                                            .font(.caption2)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .padding(.horizontal, 6)
                                            .padding(.vertical, 4)
                                            .background(Color.black.opacity(0.6))
                                            .cornerRadius(8)
                                        
                                        Spacer()
                                        
                                        Button(action: {
                                            onClose()
                                        }) {
                                            Image(systemName: "xmark")
                                                .font(.system(size: 12, weight: .bold))
                                                .foregroundColor(.white)
                                                .padding(6)
                                                .background(Color.black.opacity(0.6))
                                                .clipShape(Circle())
                                                .overlay(
                                                    Circle()
                                                        .stroke(Color.white, lineWidth: 1)
                                                )
                                        }
                                    }
                                    .padding(8)
                                }
                                
                                if let distance = formattedDistance {
                                    HStack(spacing: 4) {
                                        Image(systemName: "mappin.and.ellipse")
                                            .foregroundColor(.white)
                                        Text(distance)
                                            .font(.caption2)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                    }
                                    .padding(.horizontal, 6)
                                    .padding(.vertical, 4)
                                    .background(Color.black.opacity(0.6))
                                    .cornerRadius(8)
                                    .padding(8)
                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                                }
                            }
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(height: 120)
                        .clipped()
                        .cornerRadius(20, corners: [.topLeft, .topRight])
                        
                        ZStack(alignment: .bottomTrailing) {
                            
                            HStack(spacing: 0){
                                AptosIndicatorView(
                                    safeDishesCount: homeViewModel.selectedRestaurant?.safeDishesCount ?? 0,
                                    totalDishesCount: homeViewModel.selectedRestaurant?.dishesCount ?? 0
                                )
                                    .padding()
                                
                                VStack(alignment: .leading, spacing: 8) {
                                    
                                    HStack(spacing: 8) {
                                        Text(homeViewModel.selectedRestaurant?.name ?? "")
                                            .font(.title3)
                                            .fontWeight(.bold)
                                        
                                        Text("·")
                                            .font(.title3)
                                            .fontWeight(.bold)
                                        
                                        Text(String(repeating: "€", count: homeViewModel.selectedRestaurant?.price ?? 1))
                                            .font(.title3)
                                            .fontWeight(.bold)
                                    }
                                    
                                    HStack {
                                        Text(homeViewModel.selectedRestaurant?.address ?? "")
                                            .font(.caption)
                                        Spacer()
                                        Button(action: {
                                            isShowingNavigationOptions = true
                                        }) {
                                            HStack(spacing: 4) {
                                                Text("Ir")
                                                    .font(.caption)
                                                    .fontWeight(.medium)
                                                Image(systemName: "location.fill")
                                            }
                                            .foregroundColor(.white)
                                            .padding(.horizontal, 12)
                                            .padding(.vertical, 6)
                                            .background(Color.primaryAction)
                                            .clipShape(Capsule())
                                        }
                                    }
                                }
                                
                                Spacer()
                                
                            }
                            
                        }
                    }
                }
                .background(Color.appBackground)
                .cornerRadius(20)
                .shadow(radius: 5)
                .padding(.horizontal)
                .padding(.bottom, 12)
            }
            .buttonStyle(.plain)
            .frame(maxHeight: .infinity, alignment: .bottom)
            .confirmationDialog(
                "¿Quieres iniciar la navegación?",
                isPresented: $isShowingNavigationOptions,
                titleVisibility: .visible
            ) {
                ForEach(MapNavigationHelper.availableApps(), id: \.self) { app in
                    Button(app.rawValue) {
                        if let restaurant = homeViewModel.selectedRestaurant {
                            MapNavigationHelper.open(
                                app: app,
                                latitude: restaurant.latitude,
                                longitude: restaurant.longitude
                            )
                        }
                    }
                }
            }
        }
    }
    
    private var formattedDistance: String? {
        guard let userLocation = homeViewModel.locationManager.userLocation,
              let restaurant = homeViewModel.selectedRestaurant else { return nil }
        let restaurantLocation = CLLocation(latitude: restaurant.latitude, longitude: restaurant.longitude)
        let distanceInMeters = restaurantLocation.distance(from: userLocation)
        
        if distanceInMeters < 1000 {
            return String(format: "%.0f m", distanceInMeters)
        } else {
            return String(format: "%.1f km", distanceInMeters / 1000.0)
        }
    }
    
    private var distanceInKm: Double? {
        guard let userLocation = homeViewModel.locationManager.userLocation,
              let restaurant = homeViewModel.selectedRestaurant else { return nil }
        let restaurantLocation = CLLocation(latitude: restaurant.latitude, longitude: restaurant.longitude)
        let distanceInMeters = restaurantLocation.distance(from: userLocation)
        return distanceInMeters / 1000.0
    }
}
