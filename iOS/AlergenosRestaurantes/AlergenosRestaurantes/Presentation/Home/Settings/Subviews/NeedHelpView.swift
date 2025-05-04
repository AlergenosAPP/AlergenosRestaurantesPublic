import SwiftUI

struct NeedHelpView: View {
    var body: some View {
        Button {
            //  Acción Necesitas Ayuda
        } label: {
            VStack{
                Text("¿Necesitas ayuda?")
                    .bold()
                    .font(.title2)
                    .foregroundStyle(Color.black)
                Text("Vamos a solucionarlo")
                    .foregroundStyle(Color.black)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.systemGray6))
        .cornerRadius(15)
        .padding(.horizontal)
    }
}
