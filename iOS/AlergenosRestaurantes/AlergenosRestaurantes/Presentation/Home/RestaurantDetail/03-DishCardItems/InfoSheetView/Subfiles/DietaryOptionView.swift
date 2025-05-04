import SwiftUI

struct DietaryOptionView: View {
    let option: DietaryOption
    
    var body: some View {
        VStack(spacing: 8) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            Text(label)
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.textPrimary)
                .multilineTextAlignment(.center)
                .frame(width: 80)
        }
    }
    
    private var label: String {
        switch option {
        case .vegetarian: return "Vegetariano"
        case .vegan: return "Vegano"
        case .spicy: return "Picante"
        }
    }
    
    private var imageName: String {
        switch option {
        case .vegetarian: return "vegetariano"
        case .vegan: return "vegano"
        case .spicy: return "spicy"
        }
    }
}

#if DEBUG
import SwiftUI

struct DietaryOptionView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            DietaryOptionView(option: .vegetarian)
            DietaryOptionView(option: .vegan)
            DietaryOptionView(option: .spicy)
        }
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.gray.opacity(0.1))
    }
}
#endif

