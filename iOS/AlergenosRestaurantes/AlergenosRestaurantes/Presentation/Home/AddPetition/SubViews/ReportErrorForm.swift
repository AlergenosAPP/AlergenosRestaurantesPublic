import SwiftUI

struct ReportErrorForm: View {
    enum Field: Hashable {
        case restaurant, dish, description
    }
    enum ErrorType: String, CaseIterable, Identifiable {
        var id: String { self.rawValue }
        case restaurante = "Restaurante contiene datos erróneos (horario, foto, descripción...)"
        case alergeno = "Alérgeno erróneo de un plato"
        case nutricional = "Información nutricional errónea de un plato"
        case preferencias = "Preferencias alimentarias erróneas de un plato"
    }

    @State private var description = ""
    @State private var selectedError: ErrorType? = nil
    @State private var dish = ""
    @State private var selectedRestaurant: APIRestaurant? = nil
    @State var restaurants: [APIRestaurant]
    @FocusState private var focusedField: Field?

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Reportar Error")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 32)

            // Reemplazamos el TextField por el RestaurantSelectorMenuView
            Text("Restaurante")
                .font(.subheadline).bold()

            RestaurantSelectorMenuView(selectedRestaurant: $selectedRestaurant, restaurants: restaurants)
            
            Text("Error")
                .font(.subheadline)
                .fontWeight(.medium)
            
            ErrorSelectorMenuView(selectedError: $selectedError)

            if let selectedError, selectedError != .restaurante {
                VStack(alignment: .leading) {
                    Text("Plato")
                        .font(.subheadline).bold()
                    TextField("Nombre del plato", text: $dish)
                        .textFieldStyle(CustomTextFieldStyle())
                        .submitLabel(.next)
                        .focused($focusedField, equals: .dish)
                        .autocorrectionDisabled(true)
                }
            }

            VStack(alignment: .leading) {
                Text("Descripción")
                    .font(.subheadline).bold()
                TextField("Descripción del error", text: $description)
                    .textFieldStyle(CustomTextFieldStyle())
                    .submitLabel(.next)
                    .focused($focusedField, equals: .description)
                    .autocorrectionDisabled(true)
            }

            SubmitButton(title: "Enviar Reporte")
                .padding(.top, 32)

            Spacer()
        }
    }
}
