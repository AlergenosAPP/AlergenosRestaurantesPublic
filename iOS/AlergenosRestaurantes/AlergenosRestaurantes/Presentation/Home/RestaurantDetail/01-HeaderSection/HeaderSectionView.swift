import SwiftUI
import Kingfisher

struct HeaderSectionView: View {
    let backgroundURL: URL?
    let logoURL: URL?

    var body: some View {
        ZStack(alignment: .top) {
            if let backgroundURL = backgroundURL {
                KFImage(backgroundURL)
                    .placeholder { ProgressView() }
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .frame(height: 50)
                    .ignoresSafeArea(edges: .top)
            }
            if let logoURL = logoURL {
                KFImage(logoURL)
                    .placeholder { ProgressView() }
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(12)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 105)
                    .padding(.leading, 30)
            }
        }
    }
}

// MARK: - Preview
#if DEBUG
import SwiftUI

struct HeaderSectionView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderSectionView(
            backgroundURL: URL(string: "http://via.placeholder.com/1280x720"),
            logoURL: URL(string: "http://via.placeholder.com/1280x720")
        )
        .previewLayout(.sizeThatFits)
    }
}
#endif
