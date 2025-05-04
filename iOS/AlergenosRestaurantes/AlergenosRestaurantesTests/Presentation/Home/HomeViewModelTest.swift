import XCTest
import CoreLocation
@testable import AlergenosRestaurantes

final class HomeViewModelTest: XCTestCase {
    
    // SUT & Mocks
    private var viewModel: HomeViewModel!
    private var nearbyMock: MockNearbyRestaurantsUseCase!
    private var categoriesMock: MockGetCategoriesUseCase!
    private var locationRepoMock: MockLocationRepository!

    // MARK: - Set-up / Tear-down
    override func setUp() {
        super.setUp()
        
        // Inicializamos los mocks
        nearbyMock      = .init()
        categoriesMock  = .init()
        locationRepoMock = .init()
        
        // Inicializamos el ViewModel dentro del Main Actor
        let expectation = XCTestExpectation(description: "viewModel initialization")
        Task {
            await MainActor.run {
                viewModel = HomeViewModel(
                    nearbyRestaurantsUseCase: nearbyMock,
                    getCategoriesUseCase: categoriesMock,
                    locationRepo: locationRepoMock
                )
            }
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }

    override func tearDown() {
        viewModel          = nil
        nearbyMock         = nil
        categoriesMock     = nil
        locationRepoMock   = nil
        super.tearDown()
    }

    // MARK: - Tests

    func testInit_setsExpectedDefaults() async {
        // Usamos await MainActor.run para asegurar que estamos ejecutando estas comprobaciones en el hilo principal.
        await MainActor.run {
            XCTAssertTrue(viewModel.restaurants.isEmpty) // Verifica que el array de restaurantes está vacío al inicio.
            XCTAssertTrue(viewModel.categories.isEmpty)  // Verifica que el array de categorías está vacío al inicio.
            XCTAssertEqual(viewModel.sortOption, .distance) // Verifica que la opción de ordenar es por distancia por defecto.
            XCTAssertTrue(viewModel.isLoadingRestaurants)  // Verifica que la propiedad isLoadingRestaurants está en true al inicio.
            XCTAssertEqual(viewModel.selectedCategories.count, 0)  // Verifica que el array de selectedCategories está vacío al inicio.
            XCTAssertEqual(viewModel.selectedPriceLevels, [1, 2, 3])  // Verifica que los niveles de precios por defecto están configurados correctamente.
        }
    }
    
    func testRefresh_loadsRestaurantsAndCategories() async {
        // Simulamos que el mock de restaurantes y categorías devuelve datos
        let stubCategory = RestaurantsCategory(id: UUID(), name: "Italian", photo: nil, createdAt: nil, modifiedAt: nil)
        categoriesMock.stubbedCategories = [stubCategory]
        nearbyMock.stubbedRestaurants = [Restaurant.stub(id: UUID(), safeDishes: 2)]
        
        // Llamamos al método refresh
        await viewModel.refresh(allergenIds: [1])
        
        // Verificamos que los restaurantes y categorías se han cargado
        await MainActor.run {
            // Verificamos que el número de restaurantes es 1
            XCTAssertEqual(viewModel.restaurants.count, 1)
            // Verificamos que el número de categorías es 1
            XCTAssertEqual(viewModel.categories.count, 1)
            // Verificamos que la primera categoría tiene el nombre "Italian"
            XCTAssertEqual(viewModel.categories.first?.name, "Italian")
        }
    }
    
    func testSortBySuitablePlates_ordersDescending() async {
        // Creamos dos restaurantes con diferentes cantidades de platos aptos
        let r1 = Restaurant.stub(id: UUID(), safeDishes: 1)
        let r2 = Restaurant.stub(id: UUID(), safeDishes: 5)

        // Asignamos los restaurantes al ViewModel
        await MainActor.run {
            viewModel.restaurants = [r1, r2]
        }

        // Llamamos al método de ordenación
        await viewModel.sort(by: .suitablePlates)

        // Verificamos que los restaurantes se ordenan correctamente
        await MainActor.run {
            XCTAssertEqual(viewModel.filteredRestaurants.first?.id, r2.id)
            XCTAssertEqual(viewModel.filteredRestaurants.last?.id, r1.id)
        }
    }

    func testSortByDistance_usesUserLocation() async {
        // Simulamos dos restaurantes con diferentes ubicaciones
        let close = Restaurant.stub(id: UUID(), lat: 0, lon: 0)
        let far   = Restaurant.stub(id: UUID(), lat: 10, lon: 10)

        // Asignamos los restaurantes al ViewModel
        await MainActor.run {
            viewModel.restaurants = [far, close]
        }

        // Simulamos la ubicación del usuario (cerca del restaurante "close")
        locationRepoMock.lastKnownLocation = CLLocation(latitude: 0, longitude: 0)
        await MainActor.run {
            viewModel.locationManager.userLocation = locationRepoMock.lastKnownLocation
        }

        // Llamamos al método de ordenación
        await viewModel.sort(by: .distance)

        // Verificamos que el restaurante más cercano es el primero
        await MainActor.run {
            XCTAssertEqual(viewModel.filteredRestaurants.first?.id, close.id)
            XCTAssertEqual(viewModel.filteredRestaurants.last?.id, far.id)
        }
    }
}
