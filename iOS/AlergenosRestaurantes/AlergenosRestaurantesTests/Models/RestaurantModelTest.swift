import XCTest
import Foundation
@testable import AlergenosRestaurantes

final class RestaurantModelTest: XCTestCase {
        
    func testCreateRestaurantFrom_restaurantsVariants_variant() {
        let mockResponse = """
            {
                "phoneNumber": 917282125,
                "restaurantParentName": "McDonalds",
                "createdAt": "2025-04-26T16:39:15Z",
                "safeDishesCount": 58,
                "latitude": 40.494932,
                "dishes": [
                    {
                        "name": "Fanta® Naranja Zero",
                        "dishCategory": {
                            "name": "Bebidas",
                            "id": "9A5464D0-3799-4235-BE81-06363EA449AB"
                        },
                        "createdAt": "2025-04-26T16:39:16Z",
                        "hasAllergen": false,
                        "isSpicy": false,
                        "modifiedAt": "2025-04-26T16:39:16Z",
                        "allergens": [],
                        "ingredients": "",
                        "traces": [],
                        "isVegan": false,
                        "photo": "images/restaurants/mcdonalds/fantanaranjazero.png",
                        "isVegetarian": false,
                        "hasTraces": false,
                        "description": "Si te aburres..... A tomar Fanta y diviértete con los menús McDonald's",
                        "id": "BEF43790-2756-4505-842F-07DEAC6F6E53"
                    },
                    {
                        "name": "Coca-Cola®",
                        "dishCategory": {
                            "name": "Bebidas",
                            "id": "9A5464D0-3799-4235-BE81-06363EA449AB"
                        },
                        "createdAt": "2025-04-26T16:39:16Z",
                        "isSpicy": false,
                        "hasAllergen": false,
                        "modifiedAt": "2025-04-26T16:39:16Z",
                        "allergens": [],
                        "ingredients": "",
                        "traces": [],
                        "isVegan": false,
                        "photo": "images/restaurants/mcdonalds/cocacola.png",
                        "isVegetarian": false,
                        "hasTraces": false,
                        "description": "Coca-Cola: un refresco para disfrutar.",
                        "id": "DEA11192-6785-4203-A37A-8178DFEF3669"
                    }
            ],
                "name": "Madrid Ventisquero De La Condesa",
                "id": "02C4223D-4C34-4787-90F3-A9F86B10D8C6",
                "address": "Avenida del Ventisquero de la Condesa, 28035, Madrid, Madrid",
                "restaurantLogo": "images/restaurants/mcdonalds/logo.png",
                "price": 1,
                "dishesCount": 126,
                "longitude": -3.7184044,
                "sponsored": 1,
                "restaurantParentId": "1F478159-1ABD-4F79-BB0B-0C84A99E43EB",
                "restaurantBackground": "images/restaurants/mcdonalds/background.png",
                "modifiedAt": "2025-04-26T16:39:15Z",
                "categories": [
                    {
                        "name": "Americana",
                        "id": "8A6345CD-F156-410F-B7F9-25D41935DFCF"
                    },
                    {
                        "name": "Hamburguesas",
                        "id": "F1E72321-0280-4BF5-92E9-22D5FCC85FAF"
                    }
                ]
            }
            """
        
        let expectation = self.expectation(description: "TestSuccess")
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601

        let data = Data(mockResponse.utf8)

        do {
            let categories = try decoder.decode(Restaurant.self, from: data)
            print(categories)
            expectation.fulfill()
        } catch {
            return
        }
        
        waitForExpectations(timeout: 5)
    }
    
    func testCreateRestaurantFrom_restaurantsVariants_nearby() {
        let mockResponse = """
            [
                {
                    "price": 1,
                    "address": "Calle de Esparteros, 1, 28012, Madrid, Madrid",
                    "mail": "esparteros.7@es.mcd.com",
                    "createdAt": "2025-04-26T16:39:15Z",
                    "sponsored": 1,
                    "safeDishesCount": 43,
                    "phoneNumber": 626489052,
                    "name": "Esparteros",
                    "id": "CF57A602-D2BD-4438-9346-887F3AB3ED83",
                    "latitude": 40.4165,
                    "restaurantLogo": "images/restaurants/mcdonalds/logo.png",
                    "longitude": -3.70483,
                    "dishesCount": 126,
                    "restaurantBackground": "images/restaurants/mcdonalds/background.png",
                    "restaurantParentId": "1F478159-1ABD-4F79-BB0B-0C84A99E43EB",
                    "restaurantParentName": "McDonalds",
                    "modifiedAt": "2025-04-26T16:39:15Z",
                    "categories": [
                        {
                            "id": "8A6345CD-F156-410F-B7F9-25D41935DFCF",
                            "name": "Americana"
                        },
                        {
                            "id": "F1E72321-0280-4BF5-92E9-22D5FCC85FAF",
                            "name": "Hamburguesas"
                        }
                    ]
                },
                {
                    "price": 1,
                    "address": "Calle de la Montera, 47, 28013, Madrid, Madrid",
                    "createdAt": "2025-04-26T16:39:15Z",
                    "sponsored": 1,
                    "safeDishesCount": 43,
                    "phoneNumber": 915313711,
                    "name": "Montera",
                    "latitude": 40.4199,
                    "id": "FDD14D89-801B-42C8-88E7-A37E6CD1843A",
                    "restaurantLogo": "images/restaurants/mcdonalds/logo.png",
                    "longitude": -3.70164,
                    "dishesCount": 126,
                    "restaurantBackground": "images/restaurants/mcdonalds/background.png",
                    "restaurantParentId": "1F478159-1ABD-4F79-BB0B-0C84A99E43EB",
                    "restaurantParentName": "McDonalds",
                    "modifiedAt": "2025-04-26T16:39:15Z",
                    "categories": [
                        {
                            "id": "8A6345CD-F156-410F-B7F9-25D41935DFCF",
                            "name": "Americana"
                        },
                        {
                            "id": "F1E72321-0280-4BF5-92E9-22D5FCC85FAF",
                            "name": "Hamburguesas"
                        }
                    ]
                }
            ]
            """
        
        let expectation = self.expectation(description: "TestSuccess")
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601

        let data = Data(mockResponse.utf8)

        do {
            let categories = try decoder.decode([Restaurant].self, from: data)
            print(categories)
            expectation.fulfill()
        } catch {
            return
        }
        
        waitForExpectations(timeout: 5)
    }
}
