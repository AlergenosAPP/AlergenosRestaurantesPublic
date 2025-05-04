import SwiftUI
import MapKit

struct MapNavigationHelper {

    enum MapApp: String, CaseIterable {
        case googleMaps = "Google Maps"
        case waze = "Waze"
        case appleMaps = "Apple Maps"
    }
    
    static func availableApps() -> [MapApp] {
        var apps: [MapApp] = []
        
        if UIApplication.shared.canOpenURL(URL(string: "comgooglemaps://")!) {
            apps.append(.googleMaps)
        }
        if UIApplication.shared.canOpenURL(URL(string: "waze://")!) {
            apps.append(.waze)
        }
        apps.append(.appleMaps) // Always available
        return apps
    }
    
    static func open(app: MapApp, latitude: Double, longitude: Double) {
        let application = UIApplication.shared
        
        switch app {
        case .googleMaps:
            if let url = URL(string: "comgooglemaps://?daddr=\(latitude),\(longitude)&directionsmode=driving") {
                application.open(url, options: [:], completionHandler: nil)
            }
        case .waze:
            if let url = URL(string: "waze://?ll=\(latitude),\(longitude)&navigate=yes") {
                application.open(url, options: [:], completionHandler: nil)
            }
        case .appleMaps:
            let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
            let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate))
            mapItem.name = "Destination"
            mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving])
        }
    }
}
