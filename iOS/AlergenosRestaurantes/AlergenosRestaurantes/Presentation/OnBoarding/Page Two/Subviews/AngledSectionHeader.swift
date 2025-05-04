import SwiftUI

struct AngledSectionHeader: View {
    var title: String
    
    var body: some View {
        
        HStack {
            ZStack {
                Color.primaryAction
                    .frame(height: 40)
                    .rotationEffect(.degrees(-2))
                
                Text(title)
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.bottom, 4)
    }
}

#Preview {
    AngledSectionHeader(title: "Alérgenos")
}
