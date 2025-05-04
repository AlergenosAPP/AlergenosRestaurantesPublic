import Vapor
import Fluent

struct RestaurantCategoryPivotController: RouteCollection {
    func boot(routes: any RoutesBuilder) throws {
        // Grupo de rutas para la entidad pivot: /restaurant-category-pivots
        let pivots = routes.grouped("restaurant-category-pivots")
        pivots.get(use: getAll)
        pivots.get(":id", use: getPivot)
        pivots.post(use: createPivot)
        pivots.put(":id", use: updatePivot)
        pivots.delete(":id", use: deletePivot)
    }
}

extension RestaurantCategoryPivotController {
    // Obtiene todas las relaciones pivot y las transforma a DTO
    func getAll(_ req: Request) async throws -> [RestaurantCategoryPivot.DTO] {
        let pivots = try await RestaurantCategoryPivot.query(on: req.db)
            .with(\.$restaurant)
            .with(\.$category)
            .all()
        return pivots.map { $0.toDTO() }
    }
    
    // Obtiene una relación pivot específica
    func getPivot(_ req: Request) async throws -> RestaurantCategoryPivot.DTO {
        guard let pivot = try await RestaurantCategoryPivot.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        try await pivot.$restaurant.load(on: req.db)
        try await pivot.$category.load(on: req.db)
        return pivot.toDTO()
    }
    
    // Crea una nueva relación pivot
    func createPivot(_ req: Request) async throws -> HTTPStatus {
        try RestaurantCategoryPivot.Create.validate(content: req)
        let input = try req.content.decode(RestaurantCategoryPivot.Create.self)
        let pivot = RestaurantCategoryPivot(restaurantID: input.restaurantId, categoryID: input.categoryId)
        try await pivot.create(on: req.db)
        return .created
    }
    
    // Actualiza una relación pivot existente
    func updatePivot(_ req: Request) async throws -> HTTPStatus {
        guard let pivot = try await RestaurantCategoryPivot.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        let input = try req.content.decode(RestaurantCategoryPivot.Update.self)
        pivot.$restaurant.id = input.restaurantId
        pivot.$category.id = input.categoryId
        try await pivot.save(on: req.db)
        return .ok
    }
    
    // Elimina una relación pivot
    func deletePivot(_ req: Request) async throws -> HTTPStatus {
        guard let pivot = try await RestaurantCategoryPivot.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        try await pivot.delete(on: req.db)
        return .ok
    }
}
