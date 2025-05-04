import Foundation

protocol APISessionContract {
    func request<Request: APIRequest>(apiRequest: Request) async throws -> Data
}

struct APISession: APISessionContract {
    static var shared: APISessionContract = APISession()
    
    private let requestInterceptors: [APIRequestInterceptorContract]
    
    init(requestInterceptors: [APIRequestInterceptorContract] = [APIRequestAuthenticatorInterceptor()]) {
        self.requestInterceptors = requestInterceptors
        Logger.debug("_______________________________")
        Logger.debug("⏩ Llamada a la API iniciada")
        Logger.debug("🛠️ APISession inicializada con \(requestInterceptors.count) interceptor(es).")
    }
    
    func request<Request: APIRequest>(apiRequest: Request) async throws -> Data {
        do {
            var request = try apiRequest.getRequest()
            requestInterceptors.forEach { interceptor in
                Logger.debug("🧩 Aplicando interceptor: \(type(of: interceptor))")
                interceptor.intercept(request: &request)
            }

            let (data, response) = try await URLSession.shared.data(for: request)

            if let httpResponse = response as? HTTPURLResponse {
                Logger.debug("📬 Respuesta HTTP recibida: \(httpResponse.statusCode)")
            } else {
                Logger.warning("⚠️ Respuesta no es de tipo HTTPURLResponse.")
            }

            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                Logger.error("❌ Código de estado inesperado. Fallo en \(apiRequest.path)")
                throw APIErrorResponse.network(apiRequest.path)
            }

            Logger.debug("📦 Datos recibidos correctamente. Tamaño: \(data.count) bytes.")
            return data
        } catch {
            Logger.error("❌ Error durante la ejecución del request: \(error.localizedDescription)")
            throw error
        }
    }
}
