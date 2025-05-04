import SwiftUI

struct AnnotationViewWithAppear: View {
    @EnvironmentObject private var homeViewModel: HomeViewModel
    let restaurant: Restaurant
    @State private var appear = false
    
    var body: some View {
        AnnotationView(restaurant: restaurant) {
            withAnimation(.easeInOut(duration: 0.3)) {
                homeViewModel.selectedRestaurant = restaurant
            }
        }
        .scaleEffect(appear ? (homeViewModel.selectedRestaurant?.id == restaurant.id ? 1.2 : 1.0) : 0.3)
        .opacity(appear ? (homeViewModel.selectedRestaurant?.id == restaurant.id ? 1 : 0.85) : 0)
        .onAppear {
            let delay = Double.random(in: 0...0.6)
            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                withAnimation(.spring(response: 0.5, dampingFraction: 0.5)) {
                    appear = true
                }
            }
        }
    }
}
