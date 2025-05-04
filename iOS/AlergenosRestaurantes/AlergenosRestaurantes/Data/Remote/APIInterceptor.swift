import Foundation

protocol APIInterceptor { }

protocol APIRequestInterceptorContract: APIInterceptor {
    func intercept(request: inout URLRequest)
}

final class APIRequestAuthenticatorInterceptor: APIRequestInterceptorContract {
    func intercept(request: inout URLRequest) {
        //
    }
}
