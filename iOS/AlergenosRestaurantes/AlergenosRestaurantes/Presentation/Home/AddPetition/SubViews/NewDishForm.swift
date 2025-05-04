import SwiftUI

struct NewDishForm: View {
    @State private var dish = ""
    @State private var comments = ""
    @State private var selectedRestaurant: APIRestaurant? = nil
    @State private var isRestaurantSelectionPresented = false
    var restaurants: [APIRestaurant]

    enum Field: Hashable {
        case restaurant, dish, comments
    }
    @FocusState private var focusedField: Field?

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Nuevo Plato")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 32)
            
            Text("Restaurante")
                .font(.subheadline)
                .fontWeight(.medium)
            
            RestaurantSelectorMenuView(selectedRestaurant: $selectedRestaurant, restaurants: restaurants)
            
            Spacer().frame(height: 8)
            
            VStack(alignment: .leading) {
                Text("Plato")
                    .font(.subheadline).bold()
                TextField("Nombre del plato", text: $dish)
                    .textFieldStyle(CustomTextFieldStyle())
                    .submitLabel(.next)
                    .focused($focusedField, equals: .dish)
                    .autocorrectionDisabled(true)
            }
            
            VStack(alignment: .leading) {
                Text("Comentarios")
                    .font(.subheadline).bold()
                TextField("Comentarios de la petición (opcional)", text: $comments)
                    .textFieldStyle(CustomTextFieldStyle())
                    .submitLabel(.next)
                    .focused($focusedField, equals: .comments)
                    .autocorrectionDisabled(true)
            }
            
            SubmitButton(title: "Enviar Petición")
                .padding(.top, 32)
            
            Spacer()
        }
    }
}
