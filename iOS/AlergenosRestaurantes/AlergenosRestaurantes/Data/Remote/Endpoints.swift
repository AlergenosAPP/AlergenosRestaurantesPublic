import Foundation

struct Endpoints {
    let serverUrl: String = "127.0.0.1"
    let port: Int = 8080
    let getAllRestaurants: String = "/restaurants"                          //GET
    let getRestaurantsCategories: String = "/restaurant-categories"         //GET
    let getDishCategoriesRestaurant: String = "/dish-categories/by-variant/"//GET
    let getRestaurantAndDishes: String = "/restaurants-variants/variant"    //POST
    let getRestaurantsNearby: String = "/restaurants-variants/nearby"       //POST
}
