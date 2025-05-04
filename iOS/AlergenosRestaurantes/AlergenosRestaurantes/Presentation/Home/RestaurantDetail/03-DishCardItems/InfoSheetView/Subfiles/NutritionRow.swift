import SwiftUI

struct NutritionRow: View {
    let title: String
    let value: Double?
    let unit: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 16))
                .foregroundColor(.textPrimary)
            
            Spacer()
            
            if let value = value {
                Text("\(value.formatted()) \(unit)")
                    .font(.system(size: 16, weight: .light))
                    .foregroundColor(.secondaryText)
            } else {
                Text("-")
                    .foregroundColor(.secondaryText)
            }
        }
        .padding(.vertical, 8)
    }
}

#if DEBUG
import SwiftUI

struct NutritionRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 16) {
            NutritionRow(
                title: "Grasas",
                value: 15.5,
                unit: "g"
            )
            
            NutritionRow(
                title: "Proteínas",
                value: 22.0,
                unit: "g"
            )
            
            NutritionRow(
                title: "Fibra alimentaria",
                value: nil,
                unit: "g"
            )
        }
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.gray.opacity(0.1))
    }
}
#endif
