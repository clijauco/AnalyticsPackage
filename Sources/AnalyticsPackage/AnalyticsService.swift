//
//  AnalyticsService.swift
//  AnalyticsPod
//
//  Created by clijauco on 7/25/22.
//

import FirebaseAnalytics

public protocol AnalyticsServicing {
    func sendAnalyticsEvent()
    func addAnalyticsEvent(event: AnalyticsEvent)
}
