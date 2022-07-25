
public struct AnalyticsEvent {
    var name: String
    var parameters: [String: Any]
    var type: AnalyticsEventType
    
    public init(
        name: String,
        parameters: [String: Any] = [:],
        type: AnalyticsEventType = .Event
    ) {
        self.name = name
        self.parameters = parameters
        self.type = type
    }
}

public enum AnalyticsEventType {
    case Screen
    case Event
}

