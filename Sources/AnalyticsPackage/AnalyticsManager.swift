
public protocol AnalyticsManaging {
    func add(services: [AnalyticsServicing])
    func sendLogs()
}

public final class AnalyticsManager : AnalyticsManaging {
    internal private(set) var services = [AnalyticsServicing]()

    public static let shared = AnalyticsManager()
    public init() {}
    
    /// Call this to add analytics service providers.
    /// - Parameters:
    ///   - services: analytics service providers
    public func add(services: [AnalyticsServicing]) {
        self.services = services
    }
    
    public func sendLogs() {
        services.forEach({ service in
            service.sendAnalyticsEvent()
        })
    }
}
