import SwiftUI

struct DietaryOptionsSection: View {
    let dietaryOptions: [DietaryOption]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Opciones Alimentarias")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.textPrimary)
                .padding(.horizontal, 24)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(dietaryOptions, id: \.self) { option in
                        DietaryOptionView(option: option)
                    }
                }
                .padding(.horizontal, 24)
            }
        }
        .padding(.vertical, 8)
    }
}

#if DEBUG
import SwiftUI

struct DietaryOptionsSection_Previews: PreviewProvider {
    static var previews: some View {
        DietaryOptionsSection(
            dietaryOptions: [
                .vegetarian,
                .vegan,
                .spicy
            ]
        )
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.gray.opacity(0.1))
    }
}
#endif
