import SwiftUI

struct NavigationOptionsView: View {
    let viewModel: DetailRestaurantModel

    var body: some View {
        ForEach(MapNavigationHelper.availableApps(), id: \.self) { app in
            Button(app.rawValue) {
                MapNavigationHelper.open(
                    app: app,
                    latitude: viewModel.restaurant?.latitude ?? 0.0,
                    longitude: viewModel.restaurant?.longitude ?? 0.0
                )
            }
        }
    }
}

#if DEBUG
import SwiftUI

struct NavigationOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationOptionsView(
            viewModel: DetailRestaurantModel.previewInstance
        )
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
#endif
