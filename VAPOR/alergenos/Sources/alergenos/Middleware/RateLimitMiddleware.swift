import Vapor

final class RateLimitMiddleware: AsyncMiddleware {
    private let storage = RateLimiterStorage()
    private let limit: Int
    private let interval: TimeInterval

    init(limit: Int = 100, interval: TimeInterval = 60) {
        self.limit = limit
        self.interval = interval
    }

    func respond(to request: Request, chainingTo next: any AsyncResponder) async throws -> Response {
        let ip = request.headers.forwarded.first?.for ?? request.remoteAddress?.ipAddress ?? "unknown"

        let shouldBlock = await storage.shouldBlock(ip: ip, limit: limit, interval: interval)

        if shouldBlock {
            return Response(status: .tooManyRequests, body: .init(string: "Too many requests from this IP."))
        }

        return try await next.respond(to: request)
    }
}
