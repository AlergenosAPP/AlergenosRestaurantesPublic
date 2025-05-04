import Vapor
import Fluent

struct DishAllergenPivotController: RouteCollection {
    func boot(routes: any RoutesBuilder) throws {
        // Grupo de rutas para la entidad: /dish-allergen-pivots
        let pivots = routes.grouped("dish-allergen-pivots")
        pivots.get(use: getAll)
        pivots.get(":id", use: getPivot)
        pivots.post(use: createPivot)
        pivots.put(":id", use: updatePivot)
        pivots.delete(":id", use: deletePivot)
    }
}

extension DishAllergenPivotController {
    // Retorna todas las relaciones en formato DTO
    func getAll(_ req: Request) async throws -> [DishAllergenPivot.DTO] {
        let list = try await DishAllergenPivot.query(on: req.db)
            .with(\.$dish)
            .with(\.$allergen)
            .all()
        return list.map { $0.toDTO() }
    }
    
    // Retorna una relación específica por ID
    func getPivot(_ req: Request) async throws -> DishAllergenPivot.DTO {
        guard let pivot = try await DishAllergenPivot.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        try await pivot.$dish.load(on: req.db)
        try await pivot.$allergen.load(on: req.db)
        return pivot.toDTO()
    }
    
    // Crea una nueva relación (pivot)
    func createPivot(_ req: Request) async throws -> HTTPStatus {
        try DishAllergenPivot.Create.validate(content: req)
        let input = try req.content.decode(DishAllergenPivot.Create.self)
        let pivot = DishAllergenPivot(
            dishId: input.dishId,
            allergenId: input.allergenId,
            containsAllergen: input.containsAllergen,
            mayContain: input.mayContain
        )
        try await pivot.create(on: req.db)
        return .created
    }
    
    // Actualiza una relación existente
    func updatePivot(_ req: Request) async throws -> HTTPStatus {
        guard let pivot = try await DishAllergenPivot.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        let input = try req.content.decode(DishAllergenPivot.Update.self)
        pivot.containsAllergen = input.containsAllergen
        pivot.mayContain = input.mayContain
        try await pivot.save(on: req.db)
        return .ok
    }
    
    // Elimina una relación
    func deletePivot(_ req: Request) async throws -> HTTPStatus {
        guard let pivot = try await DishAllergenPivot.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        try await pivot.delete(on: req.db)
        return .ok
    }
}
