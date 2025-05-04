import Vapor
import Fluent

struct RestaurantCategoryController: RouteCollection {
    func boot(routes: any RoutesBuilder) throws {
        let categories = routes.grouped("restaurant-categories")
        categories.get(use: getAll)
        categories.get(":id", use: getCategory)
        categories.post(use: createCategory)
        categories.put(":id", use: updateCategory)
        categories.delete(":id", use: deleteCategory)
    }
}

extension RestaurantCategoryController {
    func getAll(_ req: Request) async throws -> [RestaurantCategory.DTO] {
        let cats = try await RestaurantCategory.query(on: req.db).all()
        return cats.map { $0.toDTO() }
    }
    
    func getCategory(_ req: Request) async throws -> RestaurantCategory.DTO {
        guard let category = try await RestaurantCategory.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        return category.toDTO()
    }
    
    func createCategory(_ req: Request) async throws -> HTTPStatus {
        try RestaurantCategory.Create.validate(content: req)
        let input = try req.content.decode(RestaurantCategory.Create.self)
        let category = RestaurantCategory(name: input.name, photo: input.photo)
        try await category.create(on: req.db)
        return .created
    }
    
    func updateCategory(_ req: Request) async throws -> HTTPStatus {
        guard let category = try await RestaurantCategory.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        let input = try req.content.decode(RestaurantCategory.Update.self)
        category.name = input.name
        try await category.save(on: req.db)
        return .ok
    }
    
    func deleteCategory(_ req: Request) async throws -> HTTPStatus {
        guard let category = try await RestaurantCategory.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        try await category.delete(on: req.db)
        return .ok
    }
}
