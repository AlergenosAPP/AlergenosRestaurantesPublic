import Foundation
import _MapKit_SwiftUI
import CoreLocation
import Combine

@MainActor
final class LocationManagerViewModel: ObservableObject {
    
    // MARK: - Dependencias
    
    private let locationRepository: LocationRepositoryProtocol
    private let madridCoordinate = CLLocationCoordinate2D(latitude: 40.4168, longitude: -3.7038)
    
    // MARK: - Estado
    
    @Published var userLocation: CLLocation?
    
    private var cancellables = Set<AnyCancellable>()
    
    var isLocationAuthorized: Bool {
        userLocation != nil
    }
    
    // MARK: - Init
    
    init(locationRepository: LocationRepositoryProtocol = LocationRepository()) {
        self.locationRepository = locationRepository
        if let concreteRepo = locationRepository as? LocationRepository,
           let service = concreteRepo.manager {
            service.$currentLocation
                .compactMap { $0 }
                .sink { [weak self] location in
                    self?.userLocation = location
                }
                .store(in: &cancellables)
        }
    }
    
    // MARK: - Métodos públicos
    
    func ensureUserLocation() async {
        let status = locationRepository.currentAuthorizationStatus()
        
        if status == .authorizedAlways || status == .authorizedWhenInUse {
            userLocation = locationRepository.getLastKnownLocation()
            if userLocation == nil {
                do {
                    userLocation = try await locationRepository.requestCurrentLocation()
                } catch { }
            }
        } else {
            userLocation = nil
        }
    }
    
    func requestUserCameraPosition(zoom: CLLocationDegrees = 0.05) async -> MapCameraPosition? {
        await ensureUserLocation()
        guard let location = userLocation else { return nil }
        return .region(
            MKCoordinateRegion(
                center: location.coordinate,
                span: MKCoordinateSpan(latitudeDelta: zoom, longitudeDelta: zoom)
            )
        )
    }
}
