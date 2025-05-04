import Testing
import Foundation
@testable import AlergenosRestaurantes

struct AllergenPreferencesStoreTests {
    
    @MainActor @Test func toggle_insertsAndRemovesItemCorrectly() {
        let testDefaults = UserDefaults(suiteName: "AllergenPreferencesStoreTests")!
        testDefaults.removePersistentDomain(forName: "AllergenPreferencesStoreTests")
        let store = AllergenPreferencesStore(defaults: testDefaults)

        // Añadir gluten
        store.toggle(.gluten)
        #expect(store.selected.contains(.gluten))

        // Quitar gluten
        store.toggle(.gluten)
        #expect(!store.selected.contains(.gluten))
    }

    @MainActor @Test func toggle_veganoReplacesVegetariano() {
        let testDefaults = UserDefaults(suiteName: "AllergenPreferencesStoreTests")!
        testDefaults.removePersistentDomain(forName: "AllergenPreferencesStoreTests")
        let store = AllergenPreferencesStore(defaults: testDefaults)

        store.toggle(.vegetariano)
        #expect(store.selected.contains(.vegetariano))

        store.toggle(.vegano)
        #expect(store.selected.contains(.vegano))
        #expect(!store.selected.contains(.vegetariano))
    }

    @MainActor @Test func persistence_worksCorrectly() {
        let suite = "AllergenPreferencesStoreTests"
        let testDefaults = UserDefaults(suiteName: suite)!
        testDefaults.removePersistentDomain(forName: suite)

        // Guardamos
        do {
            let store = AllergenPreferencesStore(defaults: testDefaults)
            store.toggle(.gluten)
            store.toggle(.soja)
        }

        // Recuperamos desde cero
        do {
            let store = AllergenPreferencesStore(defaults: testDefaults)
            #expect(store.selected.contains(.gluten))
            #expect(store.selected.contains(.soja))
        }
    }
}
