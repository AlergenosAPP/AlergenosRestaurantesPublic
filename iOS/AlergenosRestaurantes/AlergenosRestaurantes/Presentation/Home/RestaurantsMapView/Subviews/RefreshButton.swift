import SwiftUI

struct RefreshButton: View {
    @EnvironmentObject var homeViewModel: HomeViewModel
    @State private var rotationAngle: Double = 0

    var body: some View {
        Button {
            withAnimation(.easeInOut(duration: 0.8)) {
                rotationAngle += 360
            }
            Task {
                homeViewModel.refreshUUID = UUID()
                await homeViewModel.refreshAtVisibleCenter(
                    allergenIds: homeViewModel.currentAllergenIds
                )
            }
        } label: {
            Image(systemName: "arrow.clockwise")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .foregroundColor(.white)
                .rotationEffect(.degrees(rotationAngle))
                .padding(12)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.primaryAction)
                )
                .frame(width: 40, height: 40)
        }
        .padding(.trailing)
    }
}
