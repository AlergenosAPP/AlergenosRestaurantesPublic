import SwiftUI
import Kingfisher

struct DishImageSection: View {
    let photoURL: URL?

    var body: some View {
        KFImage(photoURL)
            .placeholder { ProgressView() }
            .resizable()
            .scaledToFit()
            .frame(height: 180)
            .frame(maxWidth: .infinity)
            .background(Color.appBackground)
            .cornerRadius(12)
            .padding(.horizontal, 24)
    }
}
 
#if DEBUG
import SwiftUI

struct DishImageSection_Previews: PreviewProvider {
    static var previews: some View {
        DishImageSection(
            photoURL: URL(string: "https://via.placeholder.com/600x400")
        )
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.gray.opacity(0.1))
    }
}
#endif
