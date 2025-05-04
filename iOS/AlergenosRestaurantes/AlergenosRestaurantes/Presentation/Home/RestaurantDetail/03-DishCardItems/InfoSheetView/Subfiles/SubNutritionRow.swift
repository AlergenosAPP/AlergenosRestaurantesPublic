import SwiftUI

struct SubNutritionRow: View {
    let title: String
    let value: Double?
    let unit: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 14))
                .foregroundColor(.secondaryText)
                .padding(.leading, 16)
            
            Spacer()
            
            if let value = value {
                Text("\(value.formatted()) \(unit)")
                    .font(.system(size: 14, weight: .light))
                    .foregroundColor(.secondaryText)
            } else {
                Text("-")
                    .foregroundColor(.secondaryText)
            }
        }
        .padding(.vertical, 4)
    }
}

#if DEBUG
import SwiftUI

struct SubNutritionRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 12) {
            SubNutritionRow(
                title: "de las cuales saturadas",
                value: 5.3,
                unit: "g"
            )
            
            SubNutritionRow(
                title: "de los cuales azúcares",
                value: 3.2,
                unit: "g"
            )
            
            SubNutritionRow(
                title: "de los cuales azúcares",
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
