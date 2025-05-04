import Vapor

struct UserAgentMiddleware: AsyncMiddleware {
    func respond(to request: Request, chainingTo next: any AsyncResponder) async throws -> Response {
        // Obtener agentes permitidos desde el entorno
        guard let agentsRaw = Environment.get("ALLOWED_USER_AGENTS") else {
            request.logger.debug("❌ ALLOWED_USER_AGENTS not found in environment variables")
            throw Abort(.internalServerError, reason: "ALLOWED_USER_AGENTS not set")
        }

        let allowedAgents = agentsRaw
            .split(separator: ",")
            .map { $0.trimmingCharacters(in: .whitespaces) }

        request.logger.debug("✅ Allowed User-Agents loaded: \(allowedAgents)")

        // Verificar cabecera User-Agent
        guard let userAgent = request.headers.first(name: .userAgent) else {
            request.logger.debug("❌ Request is missing User-Agent header")
            throw Abort(.unauthorized, reason: "Missing User-Agent header")
        }

        request.logger.debug("📱 Incoming request User-Agent: \(userAgent)")

        // Validar si el agente está permitido
        if !allowedAgents.contains(where: { userAgent.hasPrefix($0) }) {
            throw Abort(.unauthorized, reason: "Unauthorized request")
        }


        request.logger.debug("✅ User-Agent \(userAgent) is allowed, proceeding to next middleware")

        return try await next.respond(to: request)
    }
}
