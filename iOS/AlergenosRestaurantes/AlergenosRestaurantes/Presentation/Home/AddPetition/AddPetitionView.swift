import SwiftUI

enum PetitionTab: String, CaseIterable, Identifiable {
    case newRestaurant = "Restaurante"
    case newDish = "Plato"
    case reportError = "Error"

    var id: String { self.rawValue }
}

struct AddPetitionView: View {
    @State private var selectedTab: PetitionTab = .newRestaurant
    @Bindable var viewModel: AddPetitionTabViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("¿Qué necesitas añadir?")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.top)
                .padding(.horizontal)
                .padding(.bottom, 8)

            GeometryReader { geometry in
                let spacing: CGFloat = 8
                let totalSpacing = spacing * CGFloat(PetitionTab.allCases.count - 1)
                let tabWidth = (geometry.size.width - totalSpacing) / CGFloat(PetitionTab.allCases.count)

                HStack(spacing: spacing) {
                    ForEach(PetitionTab.allCases) { tab in
                        Button(action: {
                            withAnimation {
                                selectedTab = tab
                            }
                        }) {
                            Text(tab.rawValue)
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(selectedTab == tab ? .white : .primary)
                                .frame(width: tabWidth, height: 40)
                                .background(selectedTab == tab ? Color.primaryAction : Color.gray.opacity(0.15))
                                .clipShape(Capsule())
                        }
                    }
                }
                .frame(width: geometry.size.width)
            }
            .frame(height: 50)
            .padding(.horizontal)

            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    if selectedTab == .newRestaurant {
                        NewRestaurantForm()
                            .transition(.opacity)
                    }
                    if selectedTab == .newDish {
                        NewDishForm(restaurants: viewModel.restaurants)
                            .transition(.opacity)
                    }
                    if selectedTab == .reportError {
                        ReportErrorForm(restaurants: viewModel.restaurants)
                            .transition(.opacity)
                    }
                }
                .animation(.easeInOut(duration: 0.3), value: selectedTab)
                .padding(.horizontal)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview{
    AddPetitionView(viewModel: AddPetitionTabViewModel())
}
