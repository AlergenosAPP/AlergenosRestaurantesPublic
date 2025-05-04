import Vapor
import Fluent

struct RestaurantVariantController: RouteCollection {
    func boot(routes: any RoutesBuilder) throws {
        let variants = routes.grouped("restaurants-variants")
        variants.get("all", use: postAll)
        variants.post("variant", use: getVariant) // llamada a detalle
        variants.post(use: createVariant)
        variants.put(":id", use: updateVariant)
        variants.delete(":id", use: deleteVariant)
        variants.post("nearby", use: postNearby) // llamada lista y mapa para pintar card por cercania
    }
}

extension RestaurantVariantController {
    func postAll(_ req: Request) async throws -> [RestaurantVariant.DTO] {
        let list = try await RestaurantVariant.query(on: req.db)
            .with(\.$restaurant) { restaurant in
                restaurant.with(\.$categories)
                              .with(\.$dishes) { dishes in
                                  dishes.with(\.$allergens)
                              }
            }
            .all()
        return list.map { $0.toDTO() }
    }

    struct VariantID: Content {
        let id: UUID
    }

    struct VariantInput: Content {
        let id: UUID
        let allergenIds: [Int]
    }

    func getVariant(_ req: Request) async throws -> RestaurantVariant.DTO {
        let input = try req.content.decode(VariantInput.self)

        guard let variant = try await RestaurantVariant.find(input.id, on: req.db) else {
            throw Abort(.notFound)
        }

        try await loadAllRelations(for: variant, on: req.db)
        let safeDishesCount = calculateSafeDishesCount(from: variant.restaurant.dishes, excluding: input.allergenIds)

        let dishes: [Dish.DTO] = try await withThrowingTaskGroup(of: Dish.DTO.self) { group in
            for dish in variant.restaurant.dishes {
                group.addTask {
                    try await dish.toDTO(on: req.db, userAllergenIds: input.allergenIds)
                }
            }
            return try await group.reduce(into: [Dish.DTO]()) { $0.append($1) }
        }
        return variant.toDTO(
            safeDishesCount: safeDishesCount,
            dishes: dishes
        )
    }
    
    func createVariant(_ req: Request) async throws -> HTTPStatus {
        try RestaurantVariant.Create.validate(content: req)
        let input = try req.content.decode(RestaurantVariant.Create.self)
        let variant = RestaurantVariant(
            restaurantId: input.restaurantId,
            name: input.name,
            address: input.address,
            latitude: input.latitude,
            longitude: input.longitude,
            phoneNumber: input.phoneNumber,
            mail: input.mail
        )
        try await variant.create(on: req.db)
        return .created
    }
    
    func updateVariant(_ req: Request) async throws -> HTTPStatus {
        guard let variant = try await RestaurantVariant.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        let input = try req.content.decode(RestaurantVariant.Update.self)
        variant.name = input.name
        variant.address = input.address
        variant.latitude = input.latitude
        variant.longitude = input.longitude
        variant.phoneNumber = input.phoneNumber
        variant.mail = input.mail
        try await variant.save(on: req.db)
        return .ok
    }
    
    func deleteVariant(_ req: Request) async throws -> HTTPStatus {
        guard let variant = try await RestaurantVariant.find(req.parameters.get("id"), on: req.db) else {
            throw Abort(.notFound)
        }
        try await variant.delete(on: req.db)
        return .ok
    }

    struct AllergensInput: Content {
        let latitude: Double
        let longitude: Double
        let radius: Double?
        let allergenIds: [Int]
    }

    func postNearby(_ req: Request) async throws -> [RestaurantVariant.DTO] {
        let input = try req.content.decode(AllergensInput.self)
        let radius = input.radius ?? 5.0

        let allVariants = try await RestaurantVariant.query(on: req.db)
            .with(\.$restaurant) { restaurant in
                restaurant.with(\.$categories)
                              .with(\.$dishes) { dishes in
                                  dishes.with(\.$allergens)
                              }
            }
            .all()

        return allVariants
            .compactMap { variant -> RestaurantVariant.DTO? in
                let distance = calculateDistance(
                    lat1: input.latitude,
                    lon1: input.longitude,
                    lat2: variant.latitude,
                    lon2: variant.longitude
                )
                guard distance <= radius else { return nil }

                let safeDishesCount = calculateSafeDishesCount(from: variant.restaurant.dishes, excluding: input.allergenIds)

                return variant.toDTO(
                    safeDishesCount: safeDishesCount
                )
            }
            .sorted {
                calculateDistance(lat1: input.latitude, lon1: input.longitude, lat2: $0.latitude, lon2: $0.longitude) <
                calculateDistance(lat1: input.latitude, lon1: input.longitude, lat2: $1.latitude, lon2: $1.longitude)
            }
    }

    private func loadAllRelations(for variant: RestaurantVariant, on db: any Database) async throws {
        try await variant.$restaurant.load(on: db)
        try await variant.restaurant.$categories.load(on: db)
        try await variant.restaurant.$dishes.load(on: db)
        for dish in variant.restaurant.dishes {
            try await dish.$allergens.load(on: db)
        }
    }

    private func calculateSafeDishesCount(from dishes: [Dish], excluding allergenIds: [Int]) -> Int {
        return dishes.filter { dish in
            dish.allergens.allSatisfy { !allergenIds.contains($0.allergenNumber) }
        }.count
    }

    private func calculateDistance(lat1: Double, lon1: Double, lat2: Double, lon2: Double) -> Double {
        let rLat1 = lat1 * .pi / 180
        let rLon1 = lon1 * .pi / 180
        let rLat2 = lat2 * .pi / 180
        let rLon2 = lon2 * .pi / 180

        let dlat = rLat2 - rLat1
        let dlon = rLon2 - rLon1

        let a = sin(dlat / 2) * sin(dlat / 2) +
                cos(rLat1) * cos(rLat2) *
                sin(dlon / 2) * sin(dlon / 2)
        let c = 2 * atan2(sqrt(a), sqrt(1 - a))
        return 6371 * c
    }
}
