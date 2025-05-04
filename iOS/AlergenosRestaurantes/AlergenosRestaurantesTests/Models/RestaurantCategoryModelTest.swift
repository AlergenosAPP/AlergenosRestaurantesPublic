import XCTest
import Foundation
@testable import AlergenosRestaurantes

final class RestaurantCategoryModelTest: XCTestCase {
    
    let mockResponse = """
        [
            {
                "createdAt": "2025-04-26T16:39:16Z",
                "photo": "images/restaurants/categories/americana.png",
                "id": "8A6345CD-F156-410F-B7F9-25D41935DFCF",
                "modifiedAt": "2025-04-26T16:39:16Z",
                "name": "Americana"
            },
            {
                "createdAt": "2025-04-26T16:39:16Z",
                "photo": "images/restaurants/categories/dulces.png",
                "id": "7DF1F6EA-49B5-4CE5-8498-1F907168BDFA",
                "modifiedAt": "2025-04-26T16:39:16Z",
                "name": "Dulces"
            }
        ]
        """
    
    func testCreateRestaurantsCategoryFromServerResponse() {
        let expectation = self.expectation(description: "TestSuccess")
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601

        let data = Data(mockResponse.utf8)

        do {
            let categories = try decoder.decode([RestaurantsCategory].self, from: data)
            print(categories)
            expectation.fulfill()
        } catch {
            return
        }
        
        waitForExpectations(timeout: 5)
    }
}
