import SwiftUI

struct AptosIndicatorView: View {
    let safeDishesCount: Int
    let totalDishesCount: Int

    private var ratio: Double {
        guard totalDishesCount > 0 else { return 0 }
        return Double(safeDishesCount) / Double(totalDishesCount)
    }

    private var ratioColor: Color {
        switch ratio {
        case 0.8...1.0: return .green
        case 0.6..<0.8: return .mint
        case 0.4..<0.6: return .yellow
        case 0.2..<0.4: return .orange
        case 0.1..<0.2: return .red
        default: return .brown
        }
    }

    var body: some View {
        VStack {
            HStack(spacing: 2) {
                Circle()
                    .fill(ratioColor)
                    .frame(width: 8, height: 8)
                Text("Aptos")
                    .font(.caption)
                    .multilineTextAlignment(.center)
            }
            VStack(spacing: 0) {
                Text("\(safeDishesCount)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Rectangle()
                    .frame(width: 32, height: 1)
                    .foregroundColor(.white)
                Text("\(totalDishesCount)")
                    .foregroundColor(.white)
            }
            .padding(8)
            .background(Color.primaryAction)
            .cornerRadius(10)
        }
    }
}

#Preview {
    AptosIndicatorView(safeDishesCount: 5, totalDishesCount: 10)
}

