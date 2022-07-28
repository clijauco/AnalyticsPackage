//
//  File.swift
//  
//
//  Created by clijauco on 7/28/22.
//
import FirebaseAnalytics
public final class FirebaseAnalyticsService: AnalyticsServicing {
    public func addEvent(event: AnalyticsEvent) {
        Analytics.logEvent(event.name, parameters:event.parameters)
    }
    
    public func addScreen(event: AnalyticsEvent) {
        Analytics.logEvent(AnalyticsEventScreenView, parameters: [AnalyticsParameterScreenName: event.name,
                                                                  AnalyticsParameterScreenClass: "\(event.name)Class"])
    }
    
    public func addUserProperty(userProperty: AnalyticsUserProperty) {
        Analytics.setUserProperty(userProperty.value, forName: userProperty.name)
    }
}
