import Vapor
import Fluent

struct AllergenController: RouteCollection {
    func boot(routes: any RoutesBuilder) throws {
        let allergens = routes.grouped("allergens")
        allergens.get(use: getAll)
        allergens.get(":id", use: getAllergen)
        allergens.post(use: createAllergen)
        allergens.delete(":id", use: deleteAllergen)
    }
}

extension AllergenController {
    // Retorna todos los alérgenos en formato DTO
    func getAll(_ req: Request) async throws -> [Allergen.DTO] {
        let list = try await Allergen.query(on: req.db).all()
        return list.map { $0.toDTO() }
    }
    
    // Retorna un alérgeno específico
    func getAllergen(_ req: Request) async throws -> Allergen.DTO {
        guard let allergen = try await Allergen.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        return allergen.toDTO()
    }
    
    // Crea un nuevo alérgeno
    func createAllergen(_ req: Request) async throws -> HTTPStatus {
        try Allergen.Create.validate(content: req)
        let input = try req.content.decode(Allergen.Create.self)
        let allergen = Allergen(allergenNumber: input.allergenNumber, name: input.name)
        try await allergen.create(on: req.db)
        return .created
    }
    
    // Elimina un alérgeno
    func deleteAllergen(_ req: Request) async throws -> HTTPStatus {
        guard let allergen = try await Allergen.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        try await allergen.delete(on: req.db)
        return .ok
    }
}
