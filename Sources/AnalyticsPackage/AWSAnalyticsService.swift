//
//  AWSAnalyticsService.swift
//  AnalyticsPod
//
//  Created by clijauco on 7/25/22.
//

public final class AWSAnalyticsService: AnalyticsServicing {
    
    public var events: [AnalyticsEvent] = []
    public init () {}
    
    public func sendAnalyticsEvent() {
        events.forEach { item in
            print("AWS Event reported: \(item.name)")
            print("AWS Metadata: \(item.parameters)")
        }
    }
    
    public func addAnalyticsEvent(event: AnalyticsEvent) {
        events.append(event)
    }
    
}
