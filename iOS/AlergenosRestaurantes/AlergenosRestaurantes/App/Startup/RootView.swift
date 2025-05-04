import SwiftUI
import SwiftUICore

struct RootView: View {
    @Environment(AppState.self) private var appState
    @Environment(AllergenPreferencesStore.self) private var prefs
    
    private var onboardingVM: OnBoardingViewModel {
        OnBoardingViewModel(appState: appState)
    }
    
    var body: some View {
        Group {
            if appState.hasSeenOnboarding {
                HomeView()
                    .transition(.opacity)
            } else {
                OnBoardingView(viewModel: onboardingVM)
                    .transition(.opacity)
            }
        }
        .animation(.easeInOut(duration: 0.3), value: appState.hasSeenOnboarding)
    }
}

struct RootView_Preview: PreviewProvider {
    static var previews: some View {
        let appState = AppState()
        let prefs = AllergenPreferencesStore()
        appState.hasSeenOnboarding = false
        
        return RootView()
            .environment(appState)
            .environment(prefs) // por si lo usas dentro de Home (lo usaremos en perfil si actualizamos alergenos y preferencias)
    }
}
