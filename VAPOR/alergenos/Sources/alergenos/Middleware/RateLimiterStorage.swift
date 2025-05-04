import Foundation

actor RateLimiterStorage {
    private var ipRequests: [String: [Date]] = [:]

    func shouldBlock(ip: String, limit: Int, interval: TimeInterval) -> Bool {
        let now = Date()
        let windowStart = now.addingTimeInterval(-interval)

        var requests = ipRequests[ip, default: []].filter { $0 > windowStart }

        if requests.count >= limit {
            return true
        } else {
            requests.append(now)
            ipRequests[ip] = requests
            return false
        }
    }
}
