import XCTest
import Foundation
@testable import AlergenosRestaurantes

final class DishCategoryModelTest: XCTestCase {
    
    let mockResponse = """
        [
            {
                "id": "F34A94EE-B58B-47DC-939F-4A30764461A1",
                "name": "Hamburguesas",
                "order": 10,
                "modifiedAt": "2025-04-26T16:39:16Z",
                "createdAt": "2025-04-26T16:39:16Z"
            },
            {
                "id": "243E7DB7-3418-41F4-941B-EE966714F1CB",
                "name": "Postres",
                "order": 60,
                "modifiedAt": "2025-04-26T16:39:16Z",
                "createdAt": "2025-04-26T16:39:16Z"
            }
        ]
        """
    
    func testCreateDishCategoryFromServerResponse() {
        let expectation = self.expectation(description: "TestSuccess")
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601

        let data = Data(mockResponse.utf8)

        do {
            let categories = try decoder.decode([DishCategory].self, from: data)
            print(categories)
            expectation.fulfill()
        } catch {
            return
        }
        
        waitForExpectations(timeout: 5)
    }
}
