import SwiftUI

struct HomeView: View {
    @StateObject private var homeViewModel = HomeViewModel()
    @State private var tabs: [Tab] = []

    private struct Tab: Identifiable {
        let id = UUID()
        let title: String
        let icon: String
        let content: AnyView
    }

    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor.systemGray
    }

    var body: some View {
        TabView {
            ForEach(tabs) { tab in
                ZStack {
                    Color.appBackground.ignoresSafeArea()
                    tab.content
                }
                .tabItem {
                    Image(systemName: tab.icon).renderingMode(.template)
                    Text(tab.title)
                }
            }
        }
        .task {
            tabs = [
                Tab(
                    title: "Restaurantes",
                    icon: "fork.knife",
                    content: AnyView(RestaurantsListView())
                ),
                Tab(
                    title: "Mapa",
                    icon: "map",
                    content: AnyView(RestaurantsMapView())
                ),
                Tab(
                    title: "Añadir petición",
                    icon: "plus.square.on.square",
                    content: AnyView(AddPetitionView(viewModel: AddPetitionTabViewModel(useCase: GetAllRestaurantsUseCase())))
                ),
                Tab(
                    title: "Configuración",
                    icon: "gearshape",
                    content: AnyView(SettingsView(viewModel: SettingsViewModel()))
                )
            ]
        }
        .accentColor(.primaryAction)
        .background(Color.appBackground)
        .environmentObject(homeViewModel)
    }
}
