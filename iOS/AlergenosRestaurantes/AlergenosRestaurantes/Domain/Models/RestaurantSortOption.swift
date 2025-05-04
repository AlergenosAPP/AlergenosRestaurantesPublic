enum RestaurantSortOption: CaseIterable {
    case distance
    case suitablePlates

    var icon: String {
        switch self {
        case .distance: return "location"
        case .suitablePlates: return "fork.knife.circle"
        }
    }

    var label: String {
        switch self {
        case .distance: return "Distancia"
        case .suitablePlates: return "Platos aptos"
        }
    }
}
