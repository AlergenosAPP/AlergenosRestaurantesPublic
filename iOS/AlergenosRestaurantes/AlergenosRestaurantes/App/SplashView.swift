import SwiftUI

struct SplashView: View {
    @State private var isActive = false

    @State var appState = AppState()
    @State var prefs = AllergenPreferencesStore()

    var body: some View {
        ZStack {
            Color.primaryAction
                .ignoresSafeArea()

            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                withAnimation {
                    isActive = true
                }
            }
        }
        .fullScreenCover(isPresented: $isActive) {
            RootView()
                .environment(appState)
                .environment(prefs)
                .preferredColorScheme(.light)
        }
    }
}
