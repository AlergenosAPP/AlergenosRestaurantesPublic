import SwiftUI

private enum OnboardingStep: Int, CaseIterable {
    case welcome, allergens, location

    var buttonText: String {
        switch self {
        case .welcome:
            return "Siguiente"
        case .allergens:
            return "Aplicar filtros"
        case .location:
            return "Activar Localización"
        }
    }
}

struct OnBoardingView: View {
    @State private var currentStep: OnboardingStep = .welcome
    let viewModel: OnBoardingViewModel

    var body: some View {
        VStack(spacing: 16) {
            TabView(selection: $currentStep) {
                OnBoardingPageOne()
                    .tag(OnboardingStep.welcome)
                OnBoardingPageTwo()
                    .tag(OnboardingStep.allergens)
                OnBoardingPageThree()
                    .tag(OnboardingStep.location)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .ignoresSafeArea()

            HStack(spacing: 8) {
                ForEach(OnboardingStep.allCases, id: \.self) { step in
                    Circle()
                        .fill(step == currentStep ? Color.primaryAction : Color.secondaryText.opacity(0.3))
                        .frame(width: 8, height: 8)
                }
            }

            Button(action: {
                if let next = OnboardingStep(rawValue: currentStep.rawValue + 1) {
                    withAnimation {
                        currentStep = next
                    }
                } else {
                    Task {
                        await viewModel.handleLocationPermissionFlow()
                    }
                }
            }) {
                Text(currentStep.buttonText)
                    .transition(.opacity)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.primaryAction)
                    .animation(.easeInOut, value: currentStep)
            }
            .frame(height: 50)
            .background(Color.appBackground.ignoresSafeArea(edges: .bottom))
        }
    }
}

#Preview {
    let prefs = AllergenPreferencesStore()
    let appState = AppState()
    let viewModel = OnBoardingViewModel(appState: appState)
    
    OnBoardingView(viewModel: viewModel)
        .environment(appState)
        .environment(prefs)
}
