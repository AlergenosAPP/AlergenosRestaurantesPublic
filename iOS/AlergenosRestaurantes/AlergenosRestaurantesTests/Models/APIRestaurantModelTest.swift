import XCTest
import Foundation
@testable import AlergenosRestaurantes

final class APIRestaurantModelTest: XCTestCase {
    
    func testCreateRestaurantFrom_restaurants() {
        let mockResponse = """
        [
            {
                "name": "McDonalds",
                "id": "1F478159-1ABD-4F79-BB0B-0C84A99E43EB",
                "createdAt": "2025-04-26T16:39:15Z",
                "modifiedAt": "2025-04-26T16:39:15Z",
                "description": "Descripción McDonalds",
                "price": 1,
                "photoBackground": "images/restaurants/mcdonalds/background.png",
                "categories": [
                    {
                        "name": "Americana",
                        "photo": "images/restaurants/categories/americana.png",
                        "id": "8A6345CD-F156-410F-B7F9-25D41935DFCF",
                        "createdAt": "2025-04-26T16:39:16Z",
                        "modifiedAt": "2025-04-26T16:39:16Z"
                    },
                    {
                        "name": "Hamburguesas",
                        "photo": "images/restaurants/categories/hamburguesas.png",
                        "id": "F1E72321-0280-4BF5-92E9-22D5FCC85FAF",
                        "createdAt": "2025-04-26T16:39:16Z",
                        "modifiedAt": "2025-04-26T16:39:16Z"
                    }
                ],
                "photoLogo": "images/restaurants/mcdonalds/logo.png",
                "sponsored": 1
            },
            {
                "name": "KFC",
                "id": "C0DF6022-69E4-4362-915C-3ED0B51014CB",
                "createdAt": "2025-04-26T16:39:15Z",
                "modifiedAt": "2025-04-26T16:39:15Z",
                "description": "Restaurante de pollo frito",
                "price": 1,
                "photoBackground": "images/restaurants/kfc/background.png",
                "categories": [
                    {
                        "name": "Pollo",
                        "photo": "images/restaurants/categories/pollo.png",
                        "id": "133D4E69-3875-454A-A52E-87255A6BF749",
                        "createdAt": "2025-04-26T16:39:16Z",
                        "modifiedAt": "2025-04-26T16:39:16Z"
                    }
                ],
                "photoLogo": "images/restaurants/kfc/logo.png",
                "sponsored": 2
            }
        ]
        """
        
        let expectation = self.expectation(description: "TestSuccess")
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
        let data = Data(mockResponse.utf8)
        
        do {
            let categories = try decoder.decode([APIRestaurant].self, from: data)
            print(categories)
            expectation.fulfill()
        } catch {
            return
        }
        
        waitForExpectations(timeout: 5)
    }
    
}
