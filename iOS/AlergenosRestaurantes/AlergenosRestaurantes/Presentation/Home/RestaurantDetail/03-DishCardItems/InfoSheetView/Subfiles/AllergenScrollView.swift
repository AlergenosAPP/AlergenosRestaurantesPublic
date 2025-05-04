import SwiftUI

struct AllergenScrollView: View {
    let allergens: [AllergenOrPreference]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(allergens, id: \.self) { allergen in
                    VStack(spacing: 6) {
                        Image(allergen.svgName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                        
                        Text(allergen.name)
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.textPrimary)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: 80)
                    }
                }
            }
            .padding(.horizontal, 24)
        }
    }
}


#if DEBUG
import SwiftUI

struct AllergenScrollView_Previews: PreviewProvider {
    static var previews: some View {
        AllergenScrollView(
            allergens: [
                AllergenOrPreference.mockGluten,
                AllergenOrPreference.mockLactose,
                AllergenOrPreference.mockNuts
            ]
        )
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.gray.opacity(0.1))
    }
}
#endif
