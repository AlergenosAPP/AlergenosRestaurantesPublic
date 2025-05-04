import SwiftUI

struct RestaurantSelectorMenuView: View {
    @Binding var selectedRestaurant: APIRestaurant?
    var restaurants: [APIRestaurant]
    
    enum ErrorType: String, CaseIterable, Identifiable {
        var id: String { self.rawValue }
        case restaurante = "Restaurante tenga datos erróneos, horario, foto o descripción"
        case alergeno = "Error en alergeno de un plato"
        case nutricional = "Error en info nutricional de un plato"
        case preferencias = "Error en preferencias alimentarias de un plato"
    }

    var body: some View {
        Menu {
            ForEach(restaurants, id: \.id) { restaurant in
                Button(action: {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        selectedRestaurant = restaurant
                    }
                }) {
                    Text(restaurant.name)
                }
            }
        } label: {
            HStack {
                Group {
                    if let selectedRestaurant {
                        Text(selectedRestaurant.name)
                            .foregroundColor(.primary)
                            .transition(.opacity)
                            .id(selectedRestaurant.id)
                    } else {
                        Text("Selecciona un restaurante")
                            .foregroundColor(.gray)
                            .transition(.opacity)
                            .id("placeholder")
                    }
                }
                Spacer()
                Image(systemName: "chevron.down")
                    .foregroundColor(.gray)
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }
        .animation(.easeInOut(duration: 0.3), value: selectedRestaurant)
    }
}
