

public final class AnalyticsManager {
    
    internal private(set) var services = [AnalyticsServicing]()
    public static let shared = AnalyticsManager()
    public init() {}
    
    /// Call this to add analytics service providers.
    /// - Parameters:
    ///   - services: analytics service providers
    public func add(services: [AnalyticsServicing]) {
        self.services = services
    }
    
    /// Call this to track analytics for an action.
    /// - Parameters:
    ///   - event: Event to be tracked
    public func track(_ event: AnalyticsEvent) {
        services.forEach({ service in
            service.addEvent(event: event)
        })
    }
    
    /// Call this to track analytics for an action.
    /// - Parameters:
    ///   - screen: Screen to be tracked
    public func trackScreen(_ screen: AnalyticsEvent) {
        services.forEach({ service in
            service.addEvent(event: screen)
        })
    }
    
    /// Call this to track analytics for an action.
    /// - Parameters:
    ///   - userProperty: User Property to be tracked
    public func trackUserProperty(_ userProperty: AnalyticsUserProperty) {
        services.forEach({ service in
            service.addUserProperty(userProperty: userProperty)
        })
    }
    
    /// Call this to track analytics for an action.
    /// - Parameters:
    ///   - userProperties: User Properties to be tracked
    public func trackUserProperties(_ userProperties: [AnalyticsUserProperty]) {
        userProperties.forEach { userProperty in
            self.trackUserProperty(userProperty)
        }
    }
}
