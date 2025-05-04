import Vapor
import Fluent

struct DishCategoryController: RouteCollection {
    func boot(routes: any RoutesBuilder) throws {
        let categories = routes.grouped("dish-categories")
        categories.get(use: getAll)
        categories.get(":id", use: getCategory)
        categories.post(use: createCategory)
        categories.put(":id", use: updateCategory)
        categories.delete(":id", use: deleteCategory)
        categories.get("by-variant", ":variantId", use: getByVariant)
    }
}

extension DishCategoryController {
    // Retorna todas las categorías de platos en formato DTO
    func getAll(_ req: Request) async throws -> [DishCategory.DTO] {
        let list = try await DishCategory.query(on: req.db).all()
        return list.map { $0.toDTO() }
    }
    
    // Obtiene una categoría específica
    func getCategory(_ req: Request) async throws -> DishCategory.DTO {
        guard let category = try await DishCategory.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        return category.toDTO()
    }
    
    // Crea una nueva categoría
    func createCategory(_ req: Request) async throws -> HTTPStatus {
        try DishCategory.Create.validate(content: req)
        let input = try req.content.decode(DishCategory.Create.self)
        let category = DishCategory(name: input.name, order: input.order)
        try await category.create(on: req.db)
        return .created
    }
    
    // Actualiza una categoría existente
    func updateCategory(_ req: Request) async throws -> HTTPStatus {
        guard let category = try await DishCategory.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        let input = try req.content.decode(DishCategory.Update.self)
        category.name = input.name
        try await category.save(on: req.db)
        return .ok
    }
    
    // Elimina una categoría
    func deleteCategory(_ req: Request) async throws -> HTTPStatus {
        guard let category = try await DishCategory.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        try await category.delete(on: req.db)
        return .ok
    }

    func getByVariant(_ req: Request) async throws -> [DishCategory.DTO] {
        guard let variantId = req.parameters.get("variantId", as: UUID.self),
              let variant = try await RestaurantVariant.find(variantId, on: req.db)
        else {
            throw Abort(.badRequest, reason: "Parámetro variantId inválido.")
        }

        let dishes = try await Dish.query(on: req.db)
            .filter(\.$restaurant.$id == variant.$restaurant.id)
            .with(\.$dishCategory)
            .all()

        let categories = dishes.map { $0.dishCategory }

        let unique = Dictionary(grouping: categories, by: \.id).compactMap { $0.value.first }

        return unique.map { $0.toDTO() }
    }
}
