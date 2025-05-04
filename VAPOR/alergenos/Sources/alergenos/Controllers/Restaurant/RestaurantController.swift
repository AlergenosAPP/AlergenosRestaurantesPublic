import Vapor
import Fluent

struct RestaurantController: RouteCollection {
    func boot(routes: any RoutesBuilder) throws {
        let restaurants = routes.grouped("restaurants")
        restaurants.get(use: getAll)
        restaurants.get(":id", use: getRestaurant)
        restaurants.post(use: createRestaurant)
        restaurants.put(":id", use: updateRestaurant)
        restaurants.delete(":id", use: deleteRestaurant)
    }
}

extension RestaurantController {
    func getAll(_ req: Request) async throws -> [Restaurant.DTO] {
        // Carga las categorías para incluirlas en el DTO
        let list = try await Restaurant.query(on: req.db).with(\.$categories).all()
        return list.map { $0.toDTO() }
    }
    
    func getRestaurant(_ req: Request) async throws -> Restaurant.DTO {
        guard let restaurant = try await Restaurant.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        try await restaurant.$categories.load(on: req.db)
        return restaurant.toDTO()
    }
    
    func createRestaurant(_ req: Request) async throws -> HTTPStatus {
        try Restaurant.Create.validate(content: req)
        let input = try req.content.decode(Restaurant.Create.self)
        let restaurant = input.toModel()
        try await restaurant.create(on: req.db)
        return .created
    }
    
    func updateRestaurant(_ req: Request) async throws -> HTTPStatus {
        guard let restaurant = try await Restaurant.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        let updateData = try req.content.decode(Restaurant.Update.self)
        restaurant.name = updateData.name
        restaurant.description = updateData.description
        restaurant.photoLogo = updateData.photoLogo
        restaurant.photoBackground = updateData.photoBackground
        restaurant.sponsored = updateData.sponsored
        try await restaurant.save(on: req.db)
        return .ok
    }
    
    func deleteRestaurant(_ req: Request) async throws -> HTTPStatus {
        guard let restaurant = try await Restaurant.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        try await restaurant.delete(on: req.db)
        return .ok
    }
}
