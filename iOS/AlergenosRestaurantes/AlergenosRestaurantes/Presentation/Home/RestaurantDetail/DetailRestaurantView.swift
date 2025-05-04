import SwiftUI

struct DetailRestaurantView: View {
    
    @State private var isShowingNavigationOptions: Bool = false
    @State private var isSearching: Bool = false
    @State private var isInfoSheetPresented: Bool = false
    @Bindable var viewModel: DetailRestaurantModel
    @Environment(\.presentationMode) var presentationMode
    
    @State private var showScrollToTopButton = false
    
    private let distance: Double?
    
    init(restaurantId: String, distance: Double? = nil) {
        _viewModel = Bindable(
            wrappedValue: DetailRestaurantModel(restaurantId: restaurantId)
        )
        self.distance = distance
    }
    
    init(viewModel: DetailRestaurantModel, distance: Double? = nil) {
        _viewModel = Bindable(wrappedValue: viewModel)
        self.distance = distance
    }
    
    var body: some View {
        Group {
            if viewModel.didFinishLoad {
                loadedView
                    .transition(.opacity)
            } else {
                DetailRestaurantLoadingView()
                    .transition(.opacity)
            }
        }
        .animation(.easeInOut(duration: 0.3), value: viewModel.didFinishLoad)
        .scrollDismissesKeyboard(.immediately)
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .confirmationDialog(
            "¿Quieres iniciar la navegación?",
            isPresented: $isShowingNavigationOptions,
            titleVisibility: .visible
        ) {
            NavigationOptionsView(viewModel: viewModel)
        }
        .sheet(isPresented: $isInfoSheetPresented) {
            if let restaurant = viewModel.restaurant {
                InfoSheetView(restaurant: restaurant)
            }
        }
    }
    
    private var loadedView: some View {
        ScrollViewReader { proxy in
            ZStack(alignment: .bottomTrailing) {
                ScrollView {
                    Color.clear.frame(height: 0).id("top")
                    
                    VStack(spacing: 0) {
                        GeometryReader { geo -> Color in
                            DispatchQueue.main.async {
                                withAnimation {
                                    self.showScrollToTopButton = geo.frame(in: .named("scrollArea")).minY < -300
                                }
                            }
                            return Color.clear
                        }
                        .frame(height: 0)

                        ZStack(alignment: .top) {
                            HeaderSectionView(
                                backgroundURL: viewModel.backgroundURL,
                                logoURL: viewModel.logoURL
                            )
                            
                            if isSearching {
                                SearchBarView(
                                    searchText: $viewModel.searchText,
                                    isSearching: $isSearching
                                )
                                .transition(.asymmetric(
                                    insertion: .opacity.combined(with: .move(edge: .top)),
                                    removal: .opacity.combined(with: .move(edge: .top))
                                ))
                            } else {
                                TopNavigationBarView(
                                    onBack: { presentationMode.wrappedValue.dismiss() },
                                    onSearch: { withAnimation(.easeInOut(duration: 0.1)) { isSearching = true } },
                                    onInfo: { isInfoSheetPresented = true }
                                )
                                .transition(.opacity)
                            }
                            
                            RestaurantInfoSectionView(
                                parentName: viewModel.restaurant?.restaurantParentName ?? "",
                                restaurantName: viewModel.restaurant?.name ?? "",
                                safeDishesCount: viewModel.restaurant?.safeDishesCount ?? 0,
                                totalDishesCount: viewModel.restaurant?.dishesCount ?? 0,
                                distance: distance,
                                onNavigate: { isShowingNavigationOptions = true }
                            )
                        }
                        
                        CategorySectionView(
                            categories: viewModel.dishCategories,
                            selectedCategoryIds: viewModel.selectedCategoryIds,
                            onToggleCategory: viewModel.toggleCategorySelection,
                            onResetSelection: viewModel.resetCategorySelection
                        )
                        
                        DishesListView(viewModel: viewModel)
                    }
                }
                .coordinateSpace(name: "scrollArea")
                
                if showScrollToTopButton {
                    Button(action: {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            proxy.scrollTo("top", anchor: .top)
                        }
                    }) {
                        Image(systemName: "arrow.up")
                            .foregroundColor(.white)
                            .padding()
                            .background(
                                Circle()
                                    .fill(Color.primaryAction)
                            )
                            .shadow(radius: 4)
                            .padding()
                            .scaleEffect(showScrollToTopButton ? 1.0 : 0.7)
                            .opacity(showScrollToTopButton ? 1.0 : 0.0)
                            .animation(.spring(response: 0.4, dampingFraction: 0.6), value: showScrollToTopButton)
                    }
                    .transition(.scale.combined(with: .opacity))
                }
            }
            .animation(.easeInOut(duration: 0.3), value: showScrollToTopButton)
        }
    }
}
    

#if DEBUG
struct DetailRestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        DetailRestaurantView(
            viewModel: DetailRestaurantModel.previewInstance,
            distance: 1.2
        )
    }
}
#endif
