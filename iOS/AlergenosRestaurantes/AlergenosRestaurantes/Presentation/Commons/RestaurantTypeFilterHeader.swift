import SwiftUI
import Kingfisher

struct RestaurantTypeFilterHeader: View {
    
    @EnvironmentObject private var homeViewModel: HomeViewModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                Spacer().frame(width: 16)
                
                ForEach(homeViewModel.categories) { category in
                    categoryButton(for: category)
                }
                
                Spacer().frame(width: 16)
            }
        }
    }
    
    private func categoryButton(for category: RestaurantsCategory) -> some View {
        Button(action: {
            withAnimation(.easeInOut(duration: 0.3)) {
                if homeViewModel.selectedCategories.contains(where: { $0.id == category.id }) {
                    homeViewModel.selectedCategories.removeAll { $0.id == category.id }
                } else {
                    homeViewModel.selectedCategories.append(category)
                }
            }
        }) {
            ZStack {
                if homeViewModel.selectedCategories.contains(where: { $0.id == category.id }) {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.primaryAction)
                        .frame(width: 80, height: 80)
                        .offset(y: -8)
                        .rotationEffect(.degrees(12))
                        .transition(.opacity)
                }
                
                VStack(spacing: 4) {
                    if let path = category.photo?.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed),
                       let url = URL(string: "http://localhost:8080/\(path.trimmingCharacters(in: CharacterSet(charactersIn: "/")))") {
                        KFImage(url)
                            .placeholder {
                                ZStack {
                                    Color.gray.opacity(0.2)
                                    ProgressView()
                                        .progressViewStyle(CircularProgressViewStyle())
                                }
                                .frame(width: 80, height: 80)
                            }
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .scaleEffect(homeViewModel.selectedCategories.contains(where: { $0.id == category.id }) ? 1.10 : 1.0)
                            .rotationEffect(.degrees(homeViewModel.selectedCategories.contains(where: { $0.id == category.id }) ? 2 : 0))
                            .animation(.easeInOut(duration: 0.3), value: homeViewModel.selectedCategories)
                    }
                    
                    Text(category.name ?? "")
                        .font(.caption)
                        .fontWeight(homeViewModel.selectedCategories.contains(where: { $0.id == category.id }) ? .bold : .regular)
                        .foregroundColor(.primary)
                }
            }
        }
    }
}
