import Foundation

@Observable
class AddPetitionTabViewModel {
    var useCase: GetAllRestaurantsUseCaseContract
    var restaurants: [APIRestaurant] = []
    
    init(useCase: GetAllRestaurantsUseCaseContract = GetAllRestaurantsUseCase()) {
        self.useCase = useCase
        loadRestaurants()
    }
    
    func loadRestaurants() {
        Task {
            do {
                let allRestaurants = try await useCase.execute()
                
                Logger.info("✅ [GetAllRestaurants] Restaurantes cargados:")
                for restaurant in allRestaurants {
                    Logger.debug("🔹 ID: \(restaurant.id), Nombre: \(restaurant.name)")
                    restaurants.append(restaurant)
                }
            } catch {
                Logger.error("❌ [GetAllRestaurants] Error: \(error)")
            }
        }
    }
}
