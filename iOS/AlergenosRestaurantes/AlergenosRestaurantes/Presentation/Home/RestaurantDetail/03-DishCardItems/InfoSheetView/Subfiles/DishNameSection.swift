import SwiftUI

struct DishNameSection: View {
    let name: String
    
    var body: some View {
        Text(name)
            .font(.system(size: 24, weight: .bold))
            .foregroundColor(.textPrimary)
            .padding(.horizontal, 24)
    }
}

#if DEBUG
import SwiftUI

struct DishNameSection_Previews: PreviewProvider {
    static var previews: some View {
        DishNameSection(name: "Hamburguesa Clásica")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray.opacity(0.1))
    }
}
#endif
