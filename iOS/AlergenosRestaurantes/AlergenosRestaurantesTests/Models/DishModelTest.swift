import XCTest
import Foundation
@testable import AlergenosRestaurantes

final class DishModelTest: XCTestCase {
    
    let mockResponse = """
        [
            {
                "description": "Coca-Cola: un refresco para disfrutar.",
                "modifiedAt": "2025-04-26T16:39:16Z",
                "dishCategory": {
                    "id": "9A5464D0-3799-4235-BE81-06363EA449AB",
                    "name": "Bebidas"
                },
                "hasTraces": false,
                "isVegan": false,
                "id": "DEA11192-6785-4203-A37A-8178DFEF3669",
                "isSpicy": false,
                "isVegetarian": false,
                "allergens": [],
                "photo": "images/restaurants/mcdonalds/cocacola.png",
                "ingredients": "",
                "createdAt": "2025-04-26T16:39:16Z",
                "traces": [],
                "name": "Coca-Cola®",
                "hasAllergen": false
            },
            {
                "description": "Vente arriba con Aquarius",
                "modifiedAt": "2025-04-26T16:39:16Z",
                "dishCategory": {
                    "id": "9A5464D0-3799-4235-BE81-06363EA449AB",
                    "name": "Bebidas"
                },
                "hasTraces": false,
                "isVegan": false,
                "id": "8F2BC13F-58A0-41CE-BAE5-09C4979E015D",
                "isSpicy": false,
                "isVegetarian": false,
                "allergens": [],
                "photo": "images/restaurants/mcdonalds/aquariuszero.png",
                "ingredients": "",
                "createdAt": "2025-04-26T16:39:16Z",
                "traces": [],
                "name": "Aquarius® Zero",
                "hasAllergen": false
            }
        ]
        """
    
    func testCreateDishFromServerResponse() {
        let expectation = self.expectation(description: "TestSuccess")
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601

        let data = Data(mockResponse.utf8)

        do {
            let categories = try decoder.decode([Dish].self, from: data)
            print(categories)
            expectation.fulfill()
        } catch {
            return
        }
        
        waitForExpectations(timeout: 5)
    }
}
