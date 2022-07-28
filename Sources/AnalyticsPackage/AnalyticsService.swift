//
//  AnalyticsService.swift
//  
//
//  Created by clijauco on 7/28/22.
//

public protocol AnalyticsServicing {
    func addEvent(event: AnalyticsEvent)
    func addScreen(event: AnalyticsEvent)
    func addUserProperty(userProperty: AnalyticsUserProperty)
}

