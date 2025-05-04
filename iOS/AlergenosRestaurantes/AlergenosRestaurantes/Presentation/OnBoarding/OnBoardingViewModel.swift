import Foundation
import CoreLocation

@Observable
@MainActor
final class OnBoardingViewModel {
    private let locationRepo: LocationRepositoryProtocol
    private let appState: AppStateProtocol

    init(locationRepo: LocationRepositoryProtocol = LocationRepository(), appState: AppStateProtocol) {
        self.locationRepo = locationRepo
        self.appState = appState
    }

    /// Pide permiso y marca onboarding completado
    func handleLocationPermissionFlow() async {
        _ = await locationRepo.requestLocationAuthorization()
        appState.completeOnboarding()
    }
}
