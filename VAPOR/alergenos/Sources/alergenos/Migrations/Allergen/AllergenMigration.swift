import Fluent
import Vapor

struct AllergenMigration: AsyncMigration{
    func prepare(on database: any Database) async throws {
        try await database.schema(Allergen.schema)
            .id()
            .field("allergen_number", .int, .required)
            .field("name", .string, .required)
            .field("created_at", .datetime, .required)
            .field("last_updated", .datetime, .required)
            .create()
    }
    
    func revert(on database: any Database) async throws {
        try await database.schema(Allergen.schema).delete()
    }
}
