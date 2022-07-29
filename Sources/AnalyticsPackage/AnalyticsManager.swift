

public final class AnalyticsManager {
    
    internal private(set) var providers = [AnalyticsProvider]()
    public static let shared = AnalyticsManager()
    public init() {}
    
    /// Call this to add analytics service providers.
    /// - Parameters:
    ///   - providers: analytics service providers
    public func add(providers: [AnalyticsProvider]) {
        self.providers = providers
    }
    
    /// Call this to track analytics for an event.
    /// - Parameters:
    ///   - name: name of Event to be tracked
    ///   - params: additional parameters to be tracked
    public func logEvent(name: String, params:[String:Any]) {
        providers.forEach({ provider in
            provider.logEvent(name: name, params: params)
        })
    }
    
    /// Call this to track analytics for a Screen.
    /// - Parameters:
    ///   - name: name of Screen to be tracked
    public func setScreenName(name: String) {
        providers.forEach({ provider in
            provider.setScreenName(name: name)
        })
    }
    
    /// Call this to track analytics for a User Property.
    func setUserProperty(name:String, value:String) {
        providers.forEach({ provider in
            provider.setUserProperty(name: name, value: value)
        })
    }
    
    /// Call this to track analytics for a User Properties.
    public func addUserProperties(userProperties: [String : String]) {
        userProperties.forEach { (key: String, value: String) in
            self.setUserProperty(name: key, value: value)
        }
    }

}
