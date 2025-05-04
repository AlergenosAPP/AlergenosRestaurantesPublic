import Foundation

enum HTTPMethod: String {
    case GET, POST, PUT, UPDATE, HEAD, PATCH, DELETE, OPTIONS
}

protocol APIRequest {
    var host: String { get }
    var method: HTTPMethod { get }
    var body: Encodable? { get }
    var path: String { get }
    var headers: [String: String] { get }
    var queryParameters: [String: String] { get }

    associatedtype Response: Decodable
    typealias APIRequestResponse = Result<Response, APIErrorResponse>
    typealias APIRequestCompletion = (APIRequestResponse) -> Void
}

extension APIRequest {
    var host: String { Endpoints().serverUrl }
    var queryParameters: [String: String] { [:] }
    var headers: [String: String] { [:] }
    var body: Encodable? { nil }

    func getRequest() throws -> URLRequest {
        var components = URLComponents()
        components.scheme = "http"
        components.host = host
        components.path = path
        components.port = Endpoints().port

        if !queryParameters.isEmpty {
            Logger.debug("📎 Añadiendo queryParameters: \(queryParameters)")
            components.queryItems = queryParameters.map { URLQueryItem(name: $0.key, value: $0.value) }
        }

        guard let finalURL = components.url else {
            Logger.error("❌ URL mal formada para path: \(path)")
            throw APIErrorResponse.malformedURL(path)
        }

        var request = URLRequest(url: finalURL)
        request.httpMethod = method.rawValue

        if method != .GET, let body {
            request.httpBody = try JSONEncoder().encode(body)
        }

        request.allHTTPHeaderFields = ["Accept": "application/json", "Content-Type": "application/json"]
            .merging(headers) { $1 }

        Logger.debug("✅ URLRequest creado con URL: \(finalURL.absoluteString)")

        return request
    }
}

// MARK: - Execution
extension APIRequest {
    func perform(session: APISessionContract = APISession.shared) async throws -> Response {
        do {
            let data = try await session.request(apiRequest: self)

            if Response.self == Void.self {
                Logger.debug("🔄 Respuesta esperada es Void, devolviendo vacío")
                return () as! Response
            } else if Response.self == Data.self {
                Logger.debug("📤 Devolviendo Data como respuesta")
                return data as! Response
            }

            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601

            let decoded = try decoder.decode(Response.self, from: data)
            Logger.debug("📖 Decodificación exitosa del tipo: \(Response.self)")
            Logger.debug("⏩ Fin de la llamada a la API")
            Logger.debug("_______________________________")
            return decoded
            
            

        } catch let error as APIErrorResponse {
            Logger.error("❌ Error de la API en \(path): \(error.localizedDescription)")
            throw error
        } catch {
            if let raw = try? await session.request(apiRequest: self),
               let rawString = String(data: raw, encoding: .utf8) {
                Logger.error("📄 Raw response data:\n\(rawString)")
            }

            Logger.error("❌ Error inesperado al hacer request a \(path): \(error.localizedDescription)")
            throw APIErrorResponse.unknown(path)
        }
    }
}
