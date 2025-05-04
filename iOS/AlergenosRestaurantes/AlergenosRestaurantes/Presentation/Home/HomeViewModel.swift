import Foundation
import _MapKit_SwiftUI
import MapKit
import Combine

@MainActor
final class HomeViewModel: ObservableObject {
    
    // MARK: - Dependencias
    
    private let nearbyRestaurantsUseCase: GetRestaurantNearbyUseCaseContract
    private let getCategoriesUseCase: GetRestaurantCategoriesUseCaseContract
    private let locationRepository: LocationRepositoryProtocol
    
    private var cancellables = Set<AnyCancellable>()
    
    private let madridCoordinate = CLLocationCoordinate2D(latitude: 40.4168, longitude: -3.7038)
    
    var locationManager = LocationManagerViewModel()
    
    // MARK: - Estado
    
    @Published var searchText = ""
    @Published var selectedRestaurant: Restaurant? = nil
    @Published var selectedCategories: [RestaurantsCategory] = []
    @Published var selectedPriceLevels: [Int] = [1, 2, 3]
    @Published var restaurants: [Restaurant]
    @Published var categories: [RestaurantsCategory] = []
    @Published var sortOption: RestaurantSortOption = .distance
    @Published var isLoadingRestaurants: Bool = true
    @Published var cameraPosition: MapCameraPosition = .region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 40.4168, longitude: -3.7038),
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        )
    )
    @Published var visibleMapCenter: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 40.4168, longitude: -3.7038)
    @Published var hasCenteredMap = false
    @Published var refreshUUID = UUID()
    
    var currentAllergenIds: [Int] = []
    
    // MARK: - Init
    
    init(
        restaurants: [Restaurant] = [],
        nearbyRestaurantsUseCase: GetRestaurantNearbyUseCaseContract = GetRestaurantNearbyUseCase(),
        getCategoriesUseCase: GetRestaurantCategoriesUseCaseContract = GetRestaurantCategoriesUseCase(),
        locationRepo: LocationRepositoryProtocol = LocationRepository()
    ) {
        self.restaurants = restaurants
        self.nearbyRestaurantsUseCase = nearbyRestaurantsUseCase
        self.getCategoriesUseCase = getCategoriesUseCase
        self.locationRepository = locationRepo
    }
    
    // MARK: - Computed Properties
    
    var filteredRestaurants: [Restaurant] {
        let normalizedSearchText = searchText.folding(options: .diacriticInsensitive, locale: .current).lowercased()
        
        let filtered = restaurants.filter { restaurant in
            let combinedFields = "\(restaurant.name) \(restaurant.address) \(restaurant.restaurantParentName)"
                .folding(options: .diacriticInsensitive, locale: .current)
                .lowercased()
            
            let matchesSearch = normalizedSearchText.isEmpty || combinedFields.contains(normalizedSearchText)
            let matchesCategories = selectedCategories.isEmpty ||
                restaurant.categories.contains { category in
                    selectedCategories.contains(where: { $0.id == category.id })
                }
            let matchesPrice = selectedPriceLevels.isEmpty || selectedPriceLevels.contains(restaurant.price)
            
            return matchesCategories && matchesSearch && matchesPrice
        }
        
        switch sortOption {
        case .distance:
            guard let userLoc = locationManager.userLocation else { return filtered }
            return filtered.sorted {
                let loc1 = CLLocation(latitude: $0.latitude, longitude: $0.longitude)
                let loc2 = CLLocation(latitude: $1.latitude, longitude: $1.longitude)
                return loc1.distance(from: userLoc) < loc2.distance(from: userLoc)
            }
        case .suitablePlates:
            return filtered.sorted { $0.safeDishesCount > $1.safeDishesCount }
        }
    }
    
    func refreshAtVisibleCenter(radius: Double = 100, allergenIds: [Int]) async {
        await MainActor.run {
            refreshUUID = UUID()
            isLoadingRestaurants = true
        }

        do {
            let nearby = try await nearbyRestaurantsUseCase.execute(
                latitude: visibleMapCenter.latitude,
                longitude: visibleMapCenter.longitude,
                radius: Int(radius),
                allergenIds: allergenIds
            )
            
            await MainActor.run {
                restaurants = nearby
            }
        } catch {
            // Ignorar errores
        }

        await MainActor.run {
            isLoadingRestaurants = false
        }
    }
    
    // MARK: - Métodos públicos
    
    func refresh(allergenIds: [Int], radius: Double = 100) async {
        currentAllergenIds = allergenIds
        await ensureUserLocation()
        await ensureCategories()
        await loadRestaurants(radius: radius, allergenIds: allergenIds)
    }
    
    func sort(by option: RestaurantSortOption) {
        sortOption = option
    }
    
    func centerCameraOnUserLocation() async {
        if let cameraPos = await locationManager.requestUserCameraPosition() {
            await MainActor.run {
                cameraPosition = cameraPos
            }
        }
        
        //MARK: - GetDishCategoriesFromRestaurant
        Task {
            do {
                let restaurants = try await GetAllRestaurantsUseCase().execute()
                Logger.info("✅ [GetAllRestaurants] Restaurantes cargadas:")
                for restaurant in restaurants {
                    Logger.debug("🔹 ID: \(restaurant.id), Nombre: \(restaurant.name)")
                }
            } catch {
                Logger.error("❌ [GetAllRestaurants] Error: \(error)")
            }
        }
    }
    
    func centerCameraOnVisibleCenter() {
        let region = MKCoordinateRegion(
            center: visibleMapCenter,
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        )
        cameraPosition = .region(region)
    }
    
    // MARK: - Métodos privados
    
    private func ensureUserLocation() async {
        await locationManager.ensureUserLocation()
    }
    
    private func ensureCategories() async {
        if categories.isEmpty {
            let result = (try? await getCategoriesUseCase.execute()) ?? []
            await MainActor.run {
                categories = result
            }
        }
    }
    
    private func loadRestaurants(radius: Double = 100.0, allergenIds: [Int]) async {
        await MainActor.run {
            isLoadingRestaurants = true
        }
        
        do {
            let latitude = locationManager.userLocation?.coordinate.latitude ?? madridCoordinate.latitude
            let longitude = locationManager.userLocation?.coordinate.longitude ?? madridCoordinate.longitude
            
            let nearby = try await nearbyRestaurantsUseCase.execute(
                latitude: latitude,
                longitude: longitude,
                radius: Int(radius),
                allergenIds: allergenIds
            )
            
            await MainActor.run {
                restaurants = nearby
            }
        } catch {
            // Ignorar errores
        }
        
        await MainActor.run {
            isLoadingRestaurants = false
        }
    }
}
