
import FirebaseAnalytics

public protocol AnalyticsManaging {
    func addEvent(event: AnalyticsEvent)
    func addScreen(event: AnalyticsEvent)
    func addUserProperty(userProperties: [AnalyticsUserProperty])
    func addUserProperties(userProperty: AnalyticsUserProperty)
}

public final class AnalyticsManager : AnalyticsManaging {
    public static let shared = AnalyticsManager()
    public init() {}
    
    public func addEvent(event: AnalyticsEvent) {
        Analytics.logEvent(event.name, parameters:event.parameters)
    }
    
    public func addScreen(event: AnalyticsEvent) {
        Analytics.logEvent(AnalyticsEventScreenView, parameters: [AnalyticsParameterScreenName: event.name,
                                                                  AnalyticsParameterScreenClass: "\(event.name)Class"])
    }
    
    public func addUserProperties(userProperty: AnalyticsUserProperty) {
        Analytics.setUserProperty(userProperty.value, forName: userProperty.name)
    }
    
    public func addUserProperty(userProperties: [AnalyticsUserProperty]) {
        userProperties.forEach { item in
            addUserProperties(userProperty: item)
        }
    }
}
