import Vapor
import Fluent

struct DishController: RouteCollection {
    func boot(routes: any RoutesBuilder) throws {
        // Ruta base: /dishes
        let dishes = routes.grouped("dishes")
        dishes.get(use: getAll)
        dishes.get(":id", use: getDish)
        dishes.post(use: createDish)
        dishes.put(":id", use: updateDish)
        dishes.delete(":id", use: deleteDish)
    }
}

extension DishController {
    // Obtiene todos los Dish y los convierte a DTO
    func getAll(_ req: Request) async throws -> [Dish.DTO] {
        let allDishes = try await Dish.query(on: req.db)
            .with(\.$restaurant)
            .with(\.$dishCategory)
            .all()

        var dtoList: [Dish.DTO] = []
        for dish in allDishes {
            let dto = try await dish.toDTO(on: req.db, userAllergenIds: [])
            dtoList.append(dto)
        }
        return dtoList
    }

    func getDish(_ req: Request) async throws -> Dish.DTO {
        guard let dish = try await Dish.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        try await dish.$restaurant.load(on: req.db)
        try await dish.$dishCategory.load(on: req.db)
        return try await dish.toDTO(on: req.db, userAllergenIds: [])
    }

    
    // Crea un nuevo Dish
    func createDish(_ req: Request) async throws -> HTTPStatus {
        try Dish.Create.validate(content: req)
        let input = try req.content.decode(Dish.Create.self)
        let dish = Dish(
            restaurantId: input.restaurantId,
            name: input.name,
            photo: input.photo,
            description: input.description,
            ingredients: input.ingredients,
            dishCategoryId: input.dishCategoryId,
            energyKj: input.energyKj,
            energyKcal: input.energyKcal,
            fat: input.fat,
            saturatedFat: input.saturatedFat,
            carbohydrates: input.carbohydrates,
            sugars: input.sugars,
            proteins: input.proteins,
            fibers: input.fibers,
            salt: input.salt,
            isVegan: input.isVegan,
            isVegetarian: input.isVegetarian,
            isSpicy: input.isSpicy
        )
        try await dish.create(on: req.db)
        return .created
    }
    
    // Actualiza un Dish existente
    func updateDish(_ req: Request) async throws -> HTTPStatus {
        guard let dish = try await Dish.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        let input = try req.content.decode(Dish.Update.self)
        dish.name = input.name
        dish.photo = input.photo
        dish.description = input.description
        dish.ingredients = input.ingredients
        dish.$dishCategory.id = input.dishCategoryId
        dish.energyKj = input.energyKj
        dish.energyKcal = input.energyKcal
        dish.fat = input.fat
        dish.saturatedFat = input.saturatedFat
        dish.carbohydrates = input.carbohydrates
        dish.sugars = input.sugars
        dish.proteins = input.proteins
        dish.fibers = input.fibers
        dish.salt = input.salt
        dish.isVegan = input.isVegan
        dish.isVegetarian = input.isVegetarian
        dish.isSpicy = input.isSpicy
        try await dish.save(on: req.db)
        return .ok
    }
    
    // Elimina un Dish
    func deleteDish(_ req: Request) async throws -> HTTPStatus {
        guard let dish = try await Dish.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        try await dish.delete(on: req.db)
        return .ok
    }
}
