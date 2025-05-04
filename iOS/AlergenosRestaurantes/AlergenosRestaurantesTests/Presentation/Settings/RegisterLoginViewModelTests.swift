import Testing
import Foundation

@testable import AlergenosRestaurantes

struct RegisterLoginViewModelTests {
    @Test
    func register_fail_errorShouldBeInVariable() async throws {
        let mockRepository = FirebaseAuthServiceMock()
        mockRepository.shouldFail = true
        
        let vm = RegisterLoginViewModel(repository: mockRepository)
        
        let task = Task {
            await vm.register()
        }
        
        // Espera a que termine
        await task.value
        
        #expect(vm.isLogged == false)
        #expect(vm.error != "")
    }
    
    @Test
    func register_success_setsIsLoggedTrue() async throws {
        let mockRepository = FirebaseAuthServiceMock()
        mockRepository.shouldFail = false  // Aseguramos que no falle
        
        let vm = RegisterLoginViewModel(repository: mockRepository)
        
        await vm.register()
        
        #expect(vm.isLogged == true)
        #expect(vm.error == "")
    }
    
    @Test
        func login_failure_setsError() async throws {
            let mockRepository = FirebaseAuthServiceMock()
            mockRepository.shouldFail = true

            let vm = RegisterLoginViewModel(repository: mockRepository)

            await vm.login()

            #expect(vm.isLogged == false)
            #expect(vm.error != "")
        }
    
    @Test
        func login_success_setsIsLoggedTrue() async throws {
            let mockRepository = FirebaseAuthServiceMock()
            mockRepository.shouldFail = false

            let vm = RegisterLoginViewModel(repository: mockRepository)

            await vm.login()

            #expect(vm.isLogged == true)
            #expect(vm.error == "")
        }
}
