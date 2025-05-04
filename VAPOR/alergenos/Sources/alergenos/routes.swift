import Fluent
import Vapor

func routes(_ app: Application) throws {
    
    let controllers: [any RouteCollection] = [
        AllergenController(),
        RestaurantController(),
        RestaurantCategoryController(),
        RestaurantVariantController(),
        DishCategoryController(),
        DishController(),
        DishAllergenPivotController(),
        RestaurantCategoryPivotController()
    ]
    
    for controller in controllers {
        if app.environment == .production {
            try app.grouped(UserAgentMiddleware()).register(collection: controller)
        } else {
            try app.register(collection: controller)
        }
    }
}
