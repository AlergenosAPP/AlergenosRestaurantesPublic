@testable import AlergenosRestaurantes

final class MockAppState: AppStateProtocol {
    private(set) var didCompleteOnboarding = false
    var hasSeenOnboarding: Bool = false

    func completeOnboarding() {
        didCompleteOnboarding = true
        hasSeenOnboarding = true
    }
}
