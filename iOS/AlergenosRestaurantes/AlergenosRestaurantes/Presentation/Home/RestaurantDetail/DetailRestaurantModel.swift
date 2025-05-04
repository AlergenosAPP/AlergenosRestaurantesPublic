import Foundation

// MARK: - Properties

@Observable
final class DetailRestaurantModel {
    let restaurantId: String
    var restaurant: Restaurant?
    var dishCategories: [DishCategory] = []
    var didFinishLoad = false
    var allergenPreferences_selectedIds: [Int] = []
    var selectedCategoryIds: [UUID] = []
    var searchText: String = ""

    // MARK: - Use Cases

    @ObservationIgnored
    let restaurantAndDishesUseCase: GetRestaurantAndDishesUseCaseContract
    let dishesCategoryUseCase: GetDishCategoriesFromRestaurantUseCaseContract

    // MARK: - Private Properties

    private var didLoadRestaurant = false
    private var didLoadCategories = false

    // MARK: - Initializer

    init(
        restaurantId: String,
        restaurantAndDishesUseCase: GetRestaurantAndDishesUseCaseContract = GetRestaurantAndDishesUseCase(),
        dishesRestaurantCategoryUseCase: GetDishCategoriesFromRestaurantUseCaseContract = GetDishCategoriesFromRestaurantUseCase()
    ) {
        self.restaurantId = restaurantId
        self.restaurantAndDishesUseCase = restaurantAndDishesUseCase
        self.dishesCategoryUseCase = dishesRestaurantCategoryUseCase

        loadSelectedAllergens()
        fetchRestaurantAndDishes()
        fetchDishCategories()
    }

    // MARK: - Dishes Retrieval Methods

    func notSafeDishesByCategory() -> [UUID: [Dish]] {
        var result: [UUID: [Dish]] = [:]
        if let dishes = restaurant?.dishes?.filter({ $0.hasAllergen }) {
            for dish in filteredDishes(dishes) {
                let categoryId = dish.dishCategory.id
                result[categoryId, default: []].append(dish)
            }
        }
        return result
    }

    func safeAndTraceDishesByCategory() -> [UUID: (safe: [Dish], trace: [Dish])] {
        var result: [UUID: (safe: [Dish], trace: [Dish])] = [:]
        if let dishes = restaurant?.dishes?.filter({ !$0.hasAllergen }) {
            for dish in filteredDishes(dishes) {
                let categoryId = dish.dishCategory.id
                if dish.hasTraces {
                    result[categoryId, default: ([], [])].trace.append(dish)
                } else {
                    result[categoryId, default: ([], [])].safe.append(dish)
                }
            }
        }
        return result
    }
    
    private func filteredDishes(_ dishes: [Dish]) -> [Dish] {
        dishes.filter { dish in
            searchText.isEmpty || dish.name.localizedStandardContains(searchText)
        }
    }

    // MARK: - URL Generation Methods

    var backgroundURL: URL? {
        guard let backgroundPath = restaurant?.restaurantBackground, !backgroundPath.isEmpty else { return nil }
        return URL(string: "http://localhost:8080/\(backgroundPath)")
    }
    
    var logoURL: URL? {
        guard let logoPath = restaurant?.restaurantLogo, !logoPath.isEmpty else { return nil }
        return URL(string: "http://localhost:8080/\(logoPath)")
    }

    // MARK: - Data Loading Methods

    private func loadSelectedAllergens() {
        allergenPreferences_selectedIds = UserDefaults.standard.array(forKey: "allergenPreferences_selectedIds") as? [Int] ?? []
        Logger.info("🔍 [DetailRestaurantModel] selectedAllergenIds loaded: \(allergenPreferences_selectedIds)")
    }

    private func fetchRestaurantAndDishes() {
        Task { @MainActor in
            do {
                let restaurantAndDishes = try await restaurantAndDishesUseCase.execute(
                    id: restaurantId,
                    allergenIds: allergenPreferences_selectedIds
                )
                self.restaurant = restaurantAndDishes
                Logger.info("✅ [GetRestaurantAndDishes] Restaurant loaded")
                
                didLoadRestaurant = true
                checkIfFinishedLoading()
            } catch {
                Logger.error("❌ [GetRestaurantAndDishes] Error: \(error)")
            }
        }
    }

    private func fetchDishCategories() {
        Task { @MainActor in
            do {
                let categories = try await dishesCategoryUseCase.execute(restaurantId: restaurantId)
                self.dishCategories = categories
                Logger.info("✅ [GetDishCategories] Dish categories loaded: \(categories.count) categories")
                
                didLoadCategories = true
                checkIfFinishedLoading()
            } catch {
                Logger.error("❌ [GetDishCategories] Error fetching categories: \(error)")
            }
        }
    }

    private func checkIfFinishedLoading() {
        if didLoadRestaurant && didLoadCategories {
            didFinishLoad = true
            Logger.info("✅ [DetailRestaurantModel] All data loaded successfully")
        }
    }

    // MARK: - Category Management Methods

    func toggleCategorySelection(_ categoryId: UUID) {
        if let index = selectedCategoryIds.firstIndex(of: categoryId) {
            selectedCategoryIds.remove(at: index)
            Logger.info("Category deselected: \(categoryId)")
        } else {
            selectedCategoryIds.append(categoryId)
            Logger.info("Category selected: \(categoryId)")
        }
    }
    
    func resetCategorySelection() {
        selectedCategoryIds.removeAll()
        Logger.info("All category filters reset")
    }

    // MARK: - Dish Detail Factory

    func dishDetailModel(for dish: Dish) -> DishDetailModel {
        return DishDetailModel(dish: dish)
    }
}
#if DEBUG
extension DetailRestaurantModel {
    static var previewInstance: DetailRestaurantModel {
        let model = DetailRestaurantModel(restaurantId: UUID().uuidString)
        
        let hamburguesasCategoryId = UUID()

        model.restaurant = Restaurant(
            id: UUID(),
            restaurantParentId: UUID(),
            restaurantParentName: "Grupo Falso",
            name: "Fake Burger",
            restaurantLogo: "logo.png",
            restaurantBackground: "background.png",
            dishesCount: 2,
            safeDishesCount: 1,
            latitude: 40.0,
            longitude: -3.0,
            address: "Calle Falsa 123",
            mail: "fake@burger.com",
            phoneNumber: 123456789,
            sponsored: 1,
            price: 2,
            createdAt: Date(),
            modifiedAt: Date(),
            dishes: [
                // Plato SEGURO (sin alérgenos)
                Dish(
                    id: UUID(),
                    name: "Hamburguesa Vegana",
                    photo: "burger.png",
                    description: "Hamburguesa vegana sin alérgenos.",
                    ingredients: "Soja, Pan integral, Lechuga",
                    dishCategory: DishCategory(
                        id: hamburguesasCategoryId,
                        name: "Hamburguesas",
                        order: 1,
                        createdAt: nil,
                        modifiedAt: nil
                    ),
                    energyKj: 1400,
                    energyKcal: 320,
                    fat: 8.0,
                    saturatedFat: 2.5,
                    carbohydrates: 28.0,
                    sugars: 4.0,
                    fibers: 5.0,
                    proteins: 18.0,
                    salt: 1.0,
                    allergens: [],
                    traces: [],
                    hasTraces: false,
                    hasAllergen: false,
                    isVegetarian: true,
                    isVegan: true,
                    isSpicy: false,
                    createdAt: Date(),
                    modifiedAt: Date()
                ),
                // Plato NO seguro (tiene alérgenos)
                Dish(
                    id: UUID(),
                    name: "Hamburguesa Clásica",
                    photo: "burger.png",
                    description: "Clásica hamburguesa con pan y carne.",
                    ingredients: "Carne de vacuno, Pan, Queso",
                    dishCategory: DishCategory(
                        id: hamburguesasCategoryId,
                        name: "Hamburguesas",
                        order: 1,
                        createdAt: nil,
                        modifiedAt: nil
                    ),
                    energyKj: 1500,
                    energyKcal: 350,
                    fat: 10.0,
                    saturatedFat: 4.0,
                    carbohydrates: 30.0,
                    sugars: 5.0,
                    fibers: 2.5,
                    proteins: 15.0,
                    salt: 1.1,
                    allergens: [1, 2],
                    traces: [],
                    hasTraces: false,
                    hasAllergen: true,
                    isVegetarian: false,
                    isVegan: false,
                    isSpicy: false,
                    createdAt: Date(),
                    modifiedAt: Date()
                )
            ],
            categories: []
        )
        
        model.dishCategories = [
            DishCategory(
                id: hamburguesasCategoryId,
                name: "Hamburguesas",
                order: 1,
                createdAt: nil,
                modifiedAt: nil
            )
        ]

        model.searchText = ""
        model.selectedCategoryIds = []

        return model
    }
}
#endif

