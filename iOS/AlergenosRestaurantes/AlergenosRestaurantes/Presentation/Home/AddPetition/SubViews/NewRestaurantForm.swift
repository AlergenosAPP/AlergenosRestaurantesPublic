import SwiftUI

struct NewRestaurantForm: View {
    enum Field: Hashable {
        case name, address, comments
    }

    @State private var name = ""
    @State private var address = ""
    @State private var comments = ""
    @FocusState private var focusedField: Field?

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Nuevo Restaurante")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 32)
            
            VStack(alignment: .leading) {
                Text("Restaurante")
                    .font(.subheadline).bold()
                TextField("Restaurante", text: $name)
                    .textFieldStyle(CustomTextFieldStyle())
                    .submitLabel(.next)
                    .focused($focusedField, equals: .name)
                    .autocorrectionDisabled(true)
            }

            VStack(alignment: .leading) {
                Text("Dirección")
                    .font(.subheadline).bold()
                TextField("Dirección del restaurante", text: $address)
                    .textFieldStyle(CustomTextFieldStyle())
                    .submitLabel(.next)
                    .focused($focusedField, equals: .address)
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
