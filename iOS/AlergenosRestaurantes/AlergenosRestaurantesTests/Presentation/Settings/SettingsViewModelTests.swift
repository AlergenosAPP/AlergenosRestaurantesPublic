import Testing
import SwiftUI
import Foundation

@testable import AlergenosRestaurantes

struct SettingsViewModelTests {
    @Test
    func checkLoginState_shouldReturn_settingsAccountView() async throws {
        let mockVM = RegisterLoginViewModelMock()
        mockVM.isLogged = false
        mockVM.isPremium = false
        
        let vm = SettingsViewModel(registerLoginVM: mockVM)
        
        // Simular el Binding de path
        var path: [SettingsDestination] = []
        let pathBinding = Binding(
            get: { path },
            set: { path = $0 }
        )
        
        let testView = vm.checkLoginState(path: pathBinding) as? SettingsAccountView

        #expect(type(of: testView) == Optional<SettingsAccountView>.self)
    }
    
    @Test
    func checkLoginState_shouldReturn_welcomeUserView() async throws {
        let mockVM = RegisterLoginViewModelMock()
        mockVM.isLogged = true
        mockVM.isPremium = false
        
        let vm = SettingsViewModel(registerLoginVM: mockVM)
        
        // Simular el Binding de path
        var path: [SettingsDestination] = []
        let pathBinding = Binding(
            get: { path },
            set: { path = $0 }
        )
        
        let testView = vm.checkLoginState(path: pathBinding) as? WelcomeUserView

        #expect(type(of: testView) == Optional<WelcomeUserView>.self)
    }
    
    @Test
    func checkLoginState_shouldReturn_welcomePremiumView() async throws {
        let mockVM = RegisterLoginViewModelMock()
        mockVM.isLogged = true
        mockVM.isPremium = false
        
        let vm = SettingsViewModel(registerLoginVM: mockVM)
        
        // Simular el Binding de path
        var path: [SettingsDestination] = []
        let pathBinding = Binding(
            get: { path },
            set: { path = $0 }
        )
        
        let testView = vm.checkLoginState(path: pathBinding) as? WelcomePremiumView

        #expect(type(of: testView) == Optional<WelcomePremiumView>.self)
    }
}
