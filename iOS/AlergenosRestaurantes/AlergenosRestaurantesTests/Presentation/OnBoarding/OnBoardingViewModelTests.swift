import Testing
@testable import AlergenosRestaurantes

struct OnBoardingViewModelTests {
    @Test
    func completeOnboarding_whenPermissionAccepted_shouldMarkAsSeen() async throws {
        let mockLocationRepo = MockLocationRepository()
        let mockAppState     = await MockAppState()

        let vm = await OnBoardingViewModel(
            locationRepo: mockLocationRepo,
            appState: mockAppState
        )

        await vm.handleLocationPermissionFlow()

        #expect(mockLocationRepo.didRequestPermission == true)
        #expect(await mockAppState.didCompleteOnboarding == true)
    }
}
