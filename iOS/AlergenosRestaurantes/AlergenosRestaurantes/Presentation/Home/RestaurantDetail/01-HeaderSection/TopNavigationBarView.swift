import SwiftUI

struct TopNavigationBarView: View {
    let onBack: () -> Void
    let onSearch: () -> Void
    let onInfo: () -> Void

    var body: some View {
        VStack {
            HStack {
                NavButton(systemImage: "chevron.left", action: onBack)
                Spacer()
                NavButton(systemImage: "magnifyingglass", action: onSearch)
                NavButton(systemImage: "info.circle", action: onInfo)
            }
            .padding(.horizontal, 24)
            .padding(.top, 10)
        }
    }
}

#if DEBUG
import SwiftUI

struct TopNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopNavigationBarView(
            onBack: { print("Back tapped") },
            onSearch: { print("Search tapped") },
            onInfo: { print("Info tapped") }
        )
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.gray.opacity(0.1))
    }
}
#endif
