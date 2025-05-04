import Testing
import SwiftUI
@testable import AlergenosRestaurantes

struct DetailRestaurantModelTests {
    @Test
    func toggleCategorySelection_shouldAddAndRemoveCorrectly() {
        let model = DetailRestaurantModel(restaurantId: "test")
        let categoryId = UUID()

        model.toggleCategorySelection(categoryId)
        #expect(model.selectedCategoryIds.contains(categoryId))

        model.toggleCategorySelection(categoryId)
        #expect(!model.selectedCategoryIds.contains(categoryId))
    }

    @Test
    func resetCategorySelection_shouldClearSelectedCategories() {
        let model = DetailRestaurantModel(restaurantId: "test")
        model.selectedCategoryIds = [UUID(), UUID()]
        model.resetCategorySelection()

        #expect(model.selectedCategoryIds.isEmpty)
    }

    @Test
    func safeAndTraceDishesByCategory_shouldReturnCorrectValues() {
        let model = DetailRestaurantModel.previewInstance
        let result = model.safeAndTraceDishesByCategory()

        #expect(!result.isEmpty)
    }


    @Test
    func notSafeDishesByCategory_shouldReturnCorrectValues() {
        let model = DetailRestaurantModel.previewInstance
        let result = model.notSafeDishesByCategory()

        #expect(!result.isEmpty)
    }

    @Test
    func loadSelectedAllergens_shouldLoadCorrectly() {
        UserDefaults.standard.set([1, 2], forKey: "allergenPreferences_selectedIds")
        let model = DetailRestaurantModel(restaurantId: "test")

        #expect(!model.allergenPreferences_selectedIds.isEmpty)
    }

    @Test
    func fetchRestaurantAndDishes_shouldLoadRestaurantSuccessfully() async throws {
        let model = DetailRestaurantModel(
            restaurantId: "test",
            restaurantAndDishesUseCase: MockRestaurantAndDishesUseCaseSuccess(),
            dishesRestaurantCategoryUseCase: MockDishCategoriesUseCaseSuccess()
        )

        try await Task.sleep(nanoseconds: 500_000_000) // Dejar que cargue
        #expect(model.restaurant != nil)
    }

    @Test
    func fetchDishCategories_shouldLoadCategoriesSuccessfully() async throws {
        let model = DetailRestaurantModel(
            restaurantId: "test",
            restaurantAndDishesUseCase: MockRestaurantAndDishesUseCaseSuccess(),
            dishesRestaurantCategoryUseCase: MockDishCategoriesUseCaseSuccess()
        )

        try await Task.sleep(nanoseconds: 500_000_000)
        #expect(!model.dishCategories.isEmpty)
    }

    @Test
    func fetchRestaurantAndDishes_shouldHandleFailureGracefully() async throws {
        let model = DetailRestaurantModel(
            restaurantId: "test",
            restaurantAndDishesUseCase: MockRestaurantAndDishesUseCaseFailure(),
            dishesRestaurantCategoryUseCase: MockDishCategoriesUseCaseSuccess()
        )

        try await Task.sleep(nanoseconds: 500_000_000)
        #expect(model.restaurant == nil)
    }

    @Test
    func fetchDishCategories_shouldHandleFailureGracefully() async throws {
        let model = DetailRestaurantModel(
            restaurantId: "test",
            restaurantAndDishesUseCase: MockRestaurantAndDishesUseCaseSuccess(),
            dishesRestaurantCategoryUseCase: MockDishCategoriesUseCaseFailure()
        )

        try await Task.sleep(nanoseconds: 500_000_000)
        #expect(model.dishCategories.isEmpty)
    }

    @Test
    func checkIfFinishedLoading_shouldSetDidFinishLoad() async throws {
        let model = DetailRestaurantModel(
            restaurantId: "test",
            restaurantAndDishesUseCase: MockRestaurantAndDishesUseCaseSuccess(),
            dishesRestaurantCategoryUseCase: MockDishCategoriesUseCaseSuccess()
        )

        try await Task.sleep(nanoseconds: 500_000_000)
        #expect(model.didFinishLoad)
    }

    @Test
    func loadSelectedAllergens_shouldLoadValues() async throws {
        // Preparar UserDefaults
        let defaults = UserDefaults.standard
        defaults.set([1, 2], forKey: "allergenPreferences_selectedIds")
        
        // Crear el modelo (el init llama internamente a loadSelectedAllergens)
        let model = DetailRestaurantModel(restaurantId: UUID().uuidString)
        
        // Aquí simplemente comprobamos que se haya cargado correctamente
        try await Task.sleep(nanoseconds: 200_000_000) // Pequeño delay para seguridad (no siempre necesario)
        
        #expect(model.allergenPreferences_selectedIds.contains(1))
        #expect(model.allergenPreferences_selectedIds.contains(2))
    }

}
