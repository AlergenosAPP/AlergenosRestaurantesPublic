import SwiftUI
struct IngredientsSection: View {
    let ingredients: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Ingredientes")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.textPrimary)
                .padding(.horizontal, 24)
            
            Text(ingredients)
                .font(.system(size: 16))
                .foregroundColor(.secondaryText)
                .padding(.horizontal, 24)
        }
    }
}

#if DEBUG
import SwiftUI

struct IngredientsSection_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsSection(
            ingredients: "Carne de vacuno, pan, queso cheddar, lechuga, tomate, cebolla."
        )
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.gray.opacity(0.1))
    }
}
#endif
