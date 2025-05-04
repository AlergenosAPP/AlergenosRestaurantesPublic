import Vapor
import Fluent

struct PopulateInitialData: AsyncMigration {
    
    func prepare(on database: any Database) async throws {
        
        let mcdonalds = Restaurant(name: "McDonalds", description: "Descripción McDonalds", sponsored: 1,
                                   price: 1,
                                   photoLogo: "mcdonalds/logo.png",
                                   photoBackground: "mcdonalds/background.png")
        
        let kfc = Restaurant(name: "KFC", description: "Restaurante de pollo frito", sponsored: 2,
                             price: 1,
                             photoLogo: "kfc/logo.png",
                             photoBackground: "kfc/background.png")
        
        await withThrowingTaskGroup(of: Void.self) { taskGroup in
            [mcdonalds, kfc].forEach { restaurant in
                taskGroup.addTask {
                    try await restaurant.create(on: database)
                }
            }
        }
        
        let mcdonaldsVariants = McDonaldsRestaurantPopulator.getRestaurants(mcdonalds: mcdonalds)
        
        
        await withThrowingTaskGroup(of: Void.self) { taskGroup in
            for variant in mcdonaldsVariants {
                taskGroup.addTask {
                    try await variant.create(on: database)
                }
            }
        }
        
        let american = RestaurantCategory(name: "Americana", photo: "americana.png")
        let arab = RestaurantCategory(name: "Árabe", photo: "arabe.png")
        let sandwich = RestaurantCategory(name: "Bocadillo", photo: "bocadillo.png")
        let breakfast = RestaurantCategory(name: "Desayuno", photo: "desayuno.png")
        let sweets = RestaurantCategory(name: "Dulces", photo: "dulces.png")
        let burgers = RestaurantCategory(name: "Hamburguesas", photo: "hamburguesas.png")
        let kebab = RestaurantCategory(name: "Kebab", photo: "kebab.png")
        let latin = RestaurantCategory(name: "Latino", photo: "latino.png")
        let mediterranean = RestaurantCategory(name: "Mediterranea", photo: "mediterranea.png")
        let pizza = RestaurantCategory(name: "Pizza", photo: "pizza.png")
        let chicken = RestaurantCategory(name: "Pollo", photo: "pollo.png")
        let snacks = RestaurantCategory(name: "Snacks", photo: "snacks.png")
        let asian = RestaurantCategory(name: "Asiatica", photo: "asiatica.png")
        let indian = RestaurantCategory(name: "India", photo: "india.png")
        let fusion = RestaurantCategory(name: "Fusion", photo: "fusion.png")
        let vegetarian = RestaurantCategory(name: "Vegetariana", photo: "vegetariana.png")
        let vegan = RestaurantCategory(name: "Vegana", photo: "vegana.png")
        let tapas = RestaurantCategory(name: "Tapas", photo: "tapas.png")
        let seafood = RestaurantCategory(name: "Marisco", photo: "marisco.png")

        
        await withThrowingTaskGroup(of: Void.self) { taskGroup in
            [american, arab, sandwich, breakfast, sweets, burgers, kebab, latin, mediterranean, pizza, chicken, snacks, asian, indian, fusion, vegetarian, vegan, tapas, seafood].forEach { category in
                taskGroup.addTask {
                    try await category.create(on: database)
                }
            }
        }
        
        let gluten = Allergen(allergenNumber: 1, name: "Gluten")
        let crustaceos = Allergen(allergenNumber: 2, name: "Crustaceos")
        let huevos = Allergen(allergenNumber: 3, name: "Huevos")
        let pescado = Allergen(allergenNumber: 4, name: "Pescado")
        let cacahuetes = Allergen(allergenNumber: 5, name: "Cacahuetes")
        let soja = Allergen(allergenNumber: 6, name: "Soja")
        let leche = Allergen(allergenNumber: 7, name: "Leche")
        let frutosCascara = Allergen(allergenNumber: 8, name: "Frutos de cáscara")
        let apio = Allergen(allergenNumber: 9, name: "Apio")
        let mostaza = Allergen(allergenNumber: 10, name: "Mostaza")
        let sesamo = Allergen(allergenNumber: 11, name: "Granos de sésamo")
        let sulfitos = Allergen(allergenNumber: 12, name: "Sulfitos")
        let moluscos = Allergen(allergenNumber: 13, name: "Moluscos")
        let altramuces = Allergen(allergenNumber: 14, name: "Altramuces")
        let vegano = Allergen(allergenNumber: 15, name: "Vegano")
        let vegetariano = Allergen(allergenNumber: 16, name: "Vegetariano")
        
        await withThrowingTaskGroup(of: Void.self) { taskGroup in
            [gluten, crustaceos, huevos, pescado, cacahuetes, soja, leche, frutosCascara, apio, mostaza, sesamo, sulfitos, moluscos, altramuces, vegano, vegetariano].forEach { allergens in
                taskGroup.addTask {
                    try await allergens.create(on: database)
                }
            }
        }
        
        let dishCategories: [String: DishCategory] = [
            "Drinks": DishCategory(name: "Bebidas", order: 80),
            "Sides": DishCategory(name: "Complementos", order: 30),
            "Salads": DishCategory(name: "Ensaladas", order: 20),
            "Hamburgers": DishCategory(name: "Hamburguesas", order: 10),
            "McCafe": DishCategory(name: "McCafe", order: 50),
            "Dessert": DishCategory(name: "Postres", order: 60),
            "Sauces": DishCategory(name: "Salsas", order: 70),
            "GlutenFree": DishCategory(name: "Sin Gluten", order: 40)
        ]
        
        
        await withThrowingTaskGroup(of: Void.self) { taskGroup in
            for category in dishCategories {
                taskGroup.addTask {
                    try await category.value.create(on: database)
                }
            }
        }
        
        
        //Pivot RestaurantCategories
        try await mcdonalds.$categories.attach([burgers, american], on: database)
        try await kfc.$categories.attach([chicken], on: database)
        
        
        let mcdonaldDishes = McDonaldsDishPopulator.getDishes(mcdonalds: mcdonalds, categories: dishCategories)
        
        let mcDonaldsAllergensMap: [String: [(Allergen, Bool, Bool)]] = [
            "Cerveza Mahou": [
                (gluten, true, false),
            ],
            "Cerveza sin alcohol": [
                (gluten, true, false),
            ],
            "Alitas de pollo": [
                (gluten, true, false),
            ],
            "Chicken McBites®": [
                (gluten, true, false),
                (apio, true, false),
            ],
            "McNuggets® de pollo": [
                (gluten, true, false),
                (apio, true, false),
            ],
            "McShaker® Fries Italian Taste": [
                (cacahuetes, false, true),
            ],
            "McShaker® Fries Italian Taste Deluxe": [
                (cacahuetes, false, true),
            ],
            "ShareBox® 10 McNuggets® y 10 alitas de pollo": [
                (gluten, true, false),
                (apio, true, false),
            ],
            "ShareBox® 25 McNuggets®": [
                (gluten, true, false),
                (apio, true, false),
            ],
            "Top Fries Bacon & Cheese": [
                (leche, true, false),
            ],
            "Top Fries Bacon & Cheese Deluxe": [
                (leche, true, false),
            ],
            "Ensalada Cesar": [
                (gluten, true, false),
                (leche, true, false),
                (apio, false, true),
            ],
            "Ensalada Honey Mustard": [
                (gluten, true, false),
                (leche, true, false),
                (apio, false, true),
            ],
            "Big Mac®": [
                (gluten, true, false),
                (huevos, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (sesamo, true, false),
            ],
            "CBO®": [
                (gluten, true, false),
                (huevos, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (sesamo, true, false),
                (apio, false, true),
            ],
            "Cheeseburger": [
                (gluten, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (sesamo, false, true),
            ],
            "Chicken & Cheese": [
                (gluten, true, false),
                (leche, true, false),
                (apio, true, false),
                (mostaza, true, false),
                (sesamo, false, true),
            ],
            "Chicken Burger BBQ": [
                (gluten, true, false),
                (apio, true, false),
                (mostaza, true, false),
                (leche, false, true),
                (sesamo, false, true),
            ],
            "Chicken Burger Kids": [
                (gluten, true, false),
                (apio, true, false),
                (leche, false, true),
                (sesamo, false, true),
            ],
            "Chicken Mayo": [
                (gluten, true, false),
                (huevos, true, false),
                (apio, true, false),
                (mostaza, true, false),
                (leche, false, true),
                (sesamo, false, true),
            ],
            "Cuarto de Libra": [
                (gluten, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (sesamo, true, false),
            ],
            "Cuarto de Libra Doble": [
                (gluten, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (sesamo, true, false),
            ],
            "Doble Cheeseburger": [
                (gluten, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (sesamo, false, true),
            ],
            "Doble Chicken Mayo": [
                (gluten, true, false),
                (huevos, true, false),
                (apio, true, false),
                (mostaza, true, false),
                (leche, false, true),
                (sesamo, false, true),
            ],
            "Filete de Pescado": [
                (gluten, true, false),
                (huevos, true, false),
                (pescado, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (sesamo, false, true),
            ],
            "Filete de Pescado Doble": [
                (gluten, true, false),
                (huevos, true, false),
                (pescado, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (sesamo, false, true),
            ],
            "Hamburguesa Happy Meal": [
                (gluten, true, false),
                (mostaza, true, false),
                (leche, false, true),
                (sesamo, false, true),
            ],
            "McCrispy® Original": [
                (gluten, true, false),
                (huevos, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (sesamo, false, true),
            ],
            "McCrispy® Original Doble": [
                (gluten, true, false),
                (huevos, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (sesamo, false, true),
            ],
            "McCrispy® Pomodoro & Cheese": [
                (gluten, true, false),
                (huevos, true, false),
                (leche, true, false),
                (sesamo, false, true),
            ],
            "McCrispy® Pomodoro & Cheese Doble": [
                (gluten, true, false),
                (huevos, true, false),
                (leche, true, false),
                (sesamo, false, true),
            ],
            "McDonald's - McExtreme™ Tutti Pepperoni Doble": [
                (gluten, true, false),
                (huevos, true, false),
                (leche, true, false),
                (sesamo, true, false),
            ],
            "McExtreme™ Bacon": [
                (gluten, true, false),
                (huevos, true, false),
                (leche, true, false),
                (apio, true, false),
                (mostaza, true, false),
                (sesamo, true, false),
            ],
            "McExtreme™ Bacon Doble": [
                (gluten, true, false),
                (huevos, true, false),
                (leche, true, false),
                (apio, true, false),
                (mostaza, true, false),
                (sesamo, true, false),
            ],
            "McExtreme™ Pulled Pork": [
                (gluten, true, false),
                (huevos, true, false),
                (soja, true, false),
                (leche, true, false),
                (sesamo, false, true),
            ],
            "McExtreme™ Pulled Pork Doble": [
                (gluten, true, false),
                (huevos, true, false),
                (soja, true, false),
                (leche, true, false),
                (sesamo, false, true),
            ],
            "McExtreme™ Tutti Pepperoni": [
                (gluten, true, false),
                (huevos, true, false),
                (leche, true, false),
                (sesamo, true, false),
            ],
            "McFish®": [
                (gluten, true, false),
                (pescado, true, false),
                (leche, true, false),
                (sesamo, false, true),
            ],
            "McPollo®": [
                (gluten, true, false),
                (huevos, true, false),
                (mostaza, true, false),
                (sesamo, true, false),
                (leche, false, true),
                (apio, false, true),
            ],
            "McRoyal Deluxe®": [
                (gluten, true, false),
                (huevos, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (sesamo, true, false),
            ],
            "McWrap CBO": [
                (gluten, true, false),
                (huevos, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (soja, false, true),
                (apio, false, true),
                (sesamo, false, true),
            ],
            "Triple Cheeseburger": [
                (gluten, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (sesamo, false, true),
            ],
            "Triple Chicken Mayo": [
                (gluten, true, false),
                (huevos, true, false),
                (apio, true, false),
                (mostaza, true, false),
                (leche, false, true),
                (sesamo, false, true),
            ],
            "cafe-bombon-mccafe": [
                (leche, true, false),
            ],
            "Café con helado": [
                (leche, true, false),
            ],
            "Café con leche": [
                (leche, true, false),
            ],
            "Café Espresso Cortado": [
                (leche, true, false),
            ],
            "Capuccino": [
                (leche, true, false),
            ],
            "Caramel latte": [
                (leche, true, false),
            ],
            "Chai Latte": [
                (leche, true, false),
            ],
            "Chocolate caliente Nesquik": [
                (leche, true, false),
            ],
            "Cookie Chocolate": [
                (gluten, true, false),
                (soja, true, false),
                (leche, true, false),
                (huevos, false, true),
                (frutosCascara, false, true),
            ],
            "Cookie Chocolate Blanco y Frambuesa": [
                (gluten, true, false),
                (soja, true, false),
                (leche, true, false),
                (huevos, true, false),
            ],
            "Croissant": [
                (gluten, true, false),
                (huevos, true, false),
                (leche, true, false),
                (soja, false, true),
                (frutosCascara, false, true),
                (mostaza, false, true),
                (sesamo, false, true),
            ],
            "Leche caliente": [
                (leche, true, false),
            ],
            "McDalena Chocolate": [
                (gluten, true, false),
                (huevos, true, false),
                (sulfitos, true, false),
                (soja, false, true),
                (leche, false, true),
                (frutosCascara, false, true),
                (sesamo, false, true),
            ],
            "McDalena Salted Caramel": [
                (gluten, true, false),
                (huevos, true, false),
                (leche, true, false),
                (sulfitos, true, false),
                (soja, false, true),
                (frutosCascara, false, true),
                (sesamo, false, true),
            ],
            "McPops® Avellana": [
                (gluten, true, false),
                (huevos, true, false),
                (soja, true, false),
                (leche, true, false),
                (frutosCascara, true, false),
                (sesamo, false, true),
            ],
            "McPops® Chocolate Blanco": [
                (gluten, true, false),
                (huevos, true, false),
                (soja, true, false),
                (leche, true, false),
                (frutosCascara, false, true),
                (sesamo, false, true),
            ],
            "McPops® Lotus Biscoff®": [
                (gluten, true, false),
                (huevos, true, false),
                (soja, true, false),
                (leche, true, false),
                (frutosCascara, false, true),
                (sesamo, false, true),
            ],
            "McPops® Nocilla": [
                (gluten, true, false),
                (huevos, true, false),
                (soja, true, false),
                (leche, true, false),
                (frutosCascara, true, false),
                (sesamo, false, true),
            ],
            "Mini Cronut Chocolate": [
                (gluten, true, false),
                (leche, true, false),
                (frutosCascara, true, false),
                (huevos, false, true),
                (soja, false, true),
                (mostaza, false, true),
            ],
            "Mini Cronut Chocolate Blanco": [
                (gluten, true, false),
                (leche, true, false),
                (huevos, false, true),
                (soja, false, true),
                (frutosCascara, false, true),
                (mostaza, false, true),
            ],
            "Mocha Latte": [
                (soja, true, false),
                (leche, true, false),
            ],
            "Salted Caramel Latte": [
                (leche, true, false),
                (soja, true, false),
            ],
            "Tostada con aceite y tomate": [
                (gluten, true, false),
                (huevos, false, true),
                (soja, false, true),
                (leche, false, true),
                (frutosCascara, false, true),
                (mostaza, false, true),
                (sesamo, false, true),
            ],
            "Tostada con mantequilla y mermelada": [
                (gluten, true, false),
                (leche, true, false),
                (huevos, false, true),
                (soja, false, true),
                (frutosCascara, false, true),
                (mostaza, false, true),
                (sesamo, false, true),
            ],
            "Tostada con tomate y jamón": [
                (gluten, true, false),
                (huevos, false, true),
                (soja, false, true),
                (leche, false, true),
                (frutosCascara, false, true),
                (mostaza, false, true),
                (sesamo, false, true),
            ],
            "Tostada con tortilla": [
                (huevos, true, false),
                (soja, false, true),
            ],
            "Apple pie": [
                (gluten, true, false),
                (apio, false, true),
            ],
            "Cono de helado": [
                (gluten, true, false),
                (soja, true, false),
                (leche, true, false),
                (mostaza, false, true),
            ],
            "Danonino® Street Fresa": [
                (leche, true, false),
            ],
            "McFlurry® Filipinos Blanco": [
                (gluten, true, false),
                (soja, true, false),
                (leche, true, false),
                (huevos, false, true),
                (frutosCascara, false, true),
                (sulfitos, false, true),
            ],
            "McFlurry® KitKat®": [
                (gluten, true, false),
                (soja, true, false),
                (leche, true, false),
                (huevos, false, true),
                (frutosCascara, false, true),
                (sulfitos, false, true),
            ],
            "McFlurry® Lotus Biscoff": [
                (gluten, true, false),
                (leche, true, false),
                (soja, false, true),
            ],
            "McFlurry® Oreo®": [
                (gluten, true, false),
                (soja, true, false),
                (leche, true, false),
                (huevos, false, true),
                (frutosCascara, false, true),
                (sulfitos, false, true),
            ],
            "Mini McFlurry® Lotus Biscoff®": [
                (gluten, true, false),
                (leche, true, false),
                (soja, false, true),
            ],
            "Mini McFlurry® Filipinos Blanco": [
                (gluten, true, false),
                (leche, true, false),
                (huevos, false, true),
                (soja, false, true),
                (frutosCascara, false, true),
            ],
            "Mini McFlurry® KitKat®": [
                (gluten, true, false),
                (soja, true, false),
                (leche, true, false),
                (frutosCascara, false, true),
            ],
            "Mini McFlurry® Oreo®": [
                (gluten, true, false),
                (soja, true, false),
                (leche, true, false),
            ],
            "Sundae Caramelo": [
                (leche, true, false),
            ],
            "Sundae Chocolate": [
                (leche, true, false),
            ],
            "Sundae Chocolate Blanco": [
                (soja, true, false),
                (leche, true, false),
                (gluten, false, true),
                (huevos, false, true),
                (frutosCascara, false, true),
                (sulfitos, false, true),
            ],
            "Salsa Agridulce": [
                (apio, true, false),
                (soja, true, false),
                (gluten, true, false),
            ],
            "Salsa Barbacoa": [
                (gluten, true, false),
            ],
            "Salsa Búfalo": [
                (huevos, true, false),
                (leche, true, false),
            ],
            "Salsa Honey Mustard": [
                (mostaza, true, false),
            ],
            "Salsa Mayonesa": [
                (huevos, true, false),
            ],
            "Salsa Mostaza": [
                (mostaza, true, false),
            ],
            "Salsa Patatas Deluxe": [
                (huevos, true, false),
                (leche, true, false),
            ],
            "Big Mac® Sin Gluten": [
                (huevos, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (altramuces, true, false),
                (soja, false, true),
                (sesamo, false, true),
            ],
            "Cheeseburger Sin Gluten": [
                (altramuces, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (huevos, true, false),
                (soja, false, true),
                (sesamo, false, true),
            ],
            "Cuarto de Libra Doble Sin Gluten": [
                (altramuces, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (huevos, true, false),
                (soja, false, true),
                (sesamo, false, true),
            ],
            "Cuarto de Libra Sin Gluten": [
                (altramuces, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (huevos, true, false),
                (soja, false, true),
                (sesamo, false, true),
            ],
            "Doble Cheeseburger Sin Gluten": [
                (altramuces, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (huevos, true, false),
                (soja, false, true),
                (sesamo, false, true),
            ],
            "Hamburguesa Happy Meal Sin Gluten": [
                (mostaza, true, false),
                (altramuces, true, false),
                (huevos, true, false),
                (leche, false, true),
                (sesamo, false, true),
            ],
            "McExtreme™ Bacon Doble Sin Gluten": [
                (huevos, true, false),
                (leche, true, false),
                (apio, true, false),
                (altramuces, true, false),
                (mostaza, true, false),
                (soja, false, true),
                (sesamo, false, true),
            ],
            "McExtreme™ Bacon Sin Gluten": [
                (huevos, true, false),
                (leche, true, false),
                (apio, true, false),
                (altramuces, true, false),
                (mostaza, true, false),
                (soja, false, true),
                (sesamo, false, true),
            ],
            "McRoyal Deluxe® Sin Gluten": [
                (huevos, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (altramuces, true, false),
                (soja, false, true),
                (sesamo, false, true),
            ],
            "Tostada con aceite y tomate Sin Gluten": [
                (huevos, true, false),
                (soja, false, true),
            ],
            "Tostada con mantequilla y mermelada Sin Gluten": [
                (huevos, true, false),
                (leche, true, false),
                (soja, false, true),
            ],
            "Tostada con tomate y jamón Sin Gluten": [
                (huevos, true, false),
                (soja, false, true),
            ],
            "Triple Cheeseburger Sin Gluten": [
                (altramuces, true, false),
                (leche, true, false),
                (mostaza, true, false),
                (huevos, true, false),
                (soja, false, true),
                (sesamo, false, true),
            ]
        ]
        
        
        await withThrowingTaskGroup(of: Void.self) { taskGroup in
            for product in mcdonaldDishes {
                taskGroup.addTask {
                    try await product.create(on: database)
                    
                    if let allergens = mcDonaldsAllergensMap[product.name] {
                        try await attachAllergens(to: product, allergens: allergens, on: database)
                    }
                }
            }
        }

        
        
        
        
        //Dish Variants
//        let bigMacWithoutGluten = DishVariant(originalDishId: try bigMac.requireID(),
//                name: "Big Mac sin gluten",
//                ingredients: "Pan sin gluten Schär, carne 100% vacuno, salsa big mac, lechuga, pepinillos, cebolla, queso cheddar")
//        
//        await withThrowingTaskGroup(of: Void.self) { taskGroup in
//            [bigMacWithoutGluten].forEach { dishVariant in
//                taskGroup.addTask {
//                    try await dishVariant.create(on: database)
//                }
//            }
//        }
//        
//        
//        
//        //Pivot DishVariantAllergen
//        let bigMacWithoutGlutenAllergens: [(Allergen, Bool, Bool)] = [
//            (huevos, true, false),
//            (leche, true, false),
//            (sesamo, true, false),
//            (mostaza, true, false)
//        ]
//
//        for (allergen, contains, mayContain) in bigMacWithoutGlutenAllergens {
//            let bigMacWithoutGlutenPivot = DishVariantAllergenPivot(
//                dishVariantId: try bigMacWithoutGluten.requireID(),
//                allergenId: try allergen.requireID(),
//                containsAllergen: contains,
//                mayContain: mayContain
//            )
//            try await bigMacWithoutGlutenPivot.save(on: database)
//        }
    }

    func revert(on database: any Database) async throws {
        try await Restaurant.query(on: database).delete()
    }
    
    private func attachAllergens(
        to dish: Dish,
        allergens: [(allergen: Allergen, contains: Bool, mayContain: Bool)],
        on database: any Database
    ) async throws {
        for (allergen, contains, mayContain) in allergens {
            let pivot = DishAllergenPivot(
                dishId: try dish.requireID(),
                allergenId: try allergen.requireID(),
                containsAllergen: contains,
                mayContain: mayContain
            )
            try await pivot.save(on: database)
        }
    }
}
