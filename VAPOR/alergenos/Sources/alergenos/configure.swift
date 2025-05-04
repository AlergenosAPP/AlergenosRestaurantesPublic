import NIOSSL
import Fluent
import FluentPostgresDriver
import Vapor

// configures your application
public func configure(_ app: Application) async throws {
    
    // Validar variables de entorno críticas (fail-fast si faltan)    
    guard let _ = Environment.process.ALLOWED_USER_AGENTS else {
        fatalError("ALLOWED_USER_AGENTS not found in environment")
    }
    
    // Middleware para servir archivos estáticos desde /Public
    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    app.middleware.use(RateLimitMiddleware(limit: 100, interval: 60))
    
    // Debug: Mostrar configuración de base de datos
    app.logger.debug("📦 DATABASE_HOST: \(Environment.get("DATABASE_HOST") ?? "nil")")
    app.logger.debug("📦 DATABASE_PORT: \(Environment.get("DATABASE_PORT") ?? "nil")")
    app.logger.debug("📦 DATABASE_USERNAME: \(Environment.get("DATABASE_USERNAME") ?? "nil")")
    app.logger.debug("📦 DATABASE_PASSWORD: \(Environment.get("DATABASE_PASSWORD") ?? "nil")")
    app.logger.debug("📦 DATABASE_NAME: \(Environment.get("DATABASE_NAME") ?? "nil")")
    
    // Configuración de la base de datos PostgreSQL
    app.databases.use(DatabaseConfigurationFactory.postgres(configuration: .init(
        hostname: Environment.get("DATABASE_HOST") ?? "localhost",
        port: Environment.get("DATABASE_PORT").flatMap(Int.init(_:)) ?? SQLPostgresConfiguration.ianaPortNumber,
        username: Environment.get("DATABASE_USERNAME") ?? "vapor_username",
        password: Environment.get("DATABASE_PASSWORD") ?? "vapor_password",
        database: Environment.get("DATABASE_NAME") ?? "vapor_database",
        tls: .prefer(try .init(configuration: .clientDefault)))
    ), as: .psql)
    
    app.logger.debug("✅ Database configured successfully")
    
    // Registrar migraciones del modelo
    app.migrations.add(AllergenMigration())
    app.migrations.add(RestaurantMigration())
    app.migrations.add(RestaurantVariantMigration())
    app.migrations.add(RestaurantCategoryMigration())
    app.migrations.add(RestaurantCategoryPivotMigration())
    app.migrations.add(DishCategoryMigration())
    app.migrations.add(DishMigration())
    app.migrations.add(DishAllergenPivotMigration())
    app.migrations.add(DishVariantMigration())
    app.migrations.add(DishVariantAllergenPivotMigration())
    app.migrations.add(PopulateInitialData())
    
    try await app.autoMigrate().get()
    
    
    // Registrar rutas
    try routes(app)
}
