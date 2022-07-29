//
//  File.swift
//  
//
//  Created by clijauco on 7/28/22.
//
import FirebaseAnalytics
public final class FirebaseProvider: AnalyticsProvider {
    public init() {}
    
    public func logEvent(name: String, params: [String : Any] = [:]) {
        Analytics.logEvent(name, parameters:params)
    }
    
    public func setScreenName(name: String) {
        Analytics.logEvent(AnalyticsEventScreenView, parameters: [AnalyticsParameterScreenName: name,
                                                                  AnalyticsParameterScreenClass: "\(name)Class"])
    }
    
    public func setUserProperty(name: String, value: String) {
        Analytics.setUserProperty(value, forName: name)
    }
    
    public func addUserProperties(userProperties: [String : String]) {
        userProperties.forEach { item in
            self.setUserProperty(name: item.key, value: item.value)
        }
    }
}
