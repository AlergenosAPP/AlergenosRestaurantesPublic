import Foundation
import Observation

@MainActor
protocol AppStateProtocol: AnyObject {
    var hasSeenOnboarding: Bool { get set }
    func completeOnboarding()
}

@Observable
@MainActor
final class AppState: AppStateProtocol {
    var hasSeenOnboarding: Bool = false

    init() {
        let stored = UserDefaults.standard.bool(forKey: "hasSeenOnboarding")
        self.hasSeenOnboarding = stored
    }

    func completeOnboarding() {
        hasSeenOnboarding = true
        UserDefaults.standard.set(true, forKey: "hasSeenOnboarding")
    }
}
