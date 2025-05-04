import FirebaseCore
import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions:
        [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct AlergenosRestaurantesApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var jailBreakDetection = JailBreakDetection()

    var body: some Scene {
        WindowGroup {
            if jailBreakDetection.isJailbroken {
                JailbreakBlockedView()
            } else {
                SplashView()
            }
        }
    }
}
