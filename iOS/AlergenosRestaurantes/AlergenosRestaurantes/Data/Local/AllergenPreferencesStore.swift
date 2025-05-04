import Foundation
import Observation

/// This store is specific to allergen/preferences. Future stores should be named for their domain (e.g., UserSessionStore, AppSettingsStore, etc.).
@Observable
@MainActor
final class AllergenPreferencesStore {
    private let key = "allergenPreferences_selectedIds"
    private let defaults: UserDefaults
    
    var selected: Set<AllergenOrPreference> = []
    
    init(defaults: UserDefaults = .standard) {
        self.defaults = defaults
        load()
    }
    
    func toggle(_ item: AllergenOrPreference) {
        if selected.contains(item) {
            selected.remove(item)
        } else {
            if item == .vegano {
                selected.remove(.vegetariano)
            } else if item == .vegetariano {
                selected.remove(.vegano)
            }
            selected.insert(item)
        }
        save()
    }
    
    private func load() {
        let ids = defaults.array(forKey: key) as? [Int] ?? []
        selected = Set(ids.compactMap(AllergenOrPreference.init(rawValue:)))
    }
    
    private func save() {
        let ids = selected.map(\.rawValue)
        defaults.set(ids, forKey: key)
    }
}

#if DEBUG
extension AllergenOrPreference {
    static let mockGluten = AllergenOrPreference(rawValue: 1)!
    static let mockLactose = AllergenOrPreference(rawValue: 2)!
    static let mockNuts = AllergenOrPreference(rawValue: 3)!
}
#endif


/*
 Basic Usage:
 ------------
 - Insert this store into SwiftUI environment at the App entry point:
 let store = AllergenPreferencesStore()
 WindowGroup {
 RootView()
 .environment(store)
 }
 
 - Access in Views:
 @Environment(AllergenPreferencesStore.self) var prefsStore
 
 - Toggle an item:
 Button("Toggle Gluten") {
 prefsStore.toggle(.gluten)
 }
 
 - Read current selection:
 let selectedIds = prefsStore.selected.map(\.rawValue)
 
 */
