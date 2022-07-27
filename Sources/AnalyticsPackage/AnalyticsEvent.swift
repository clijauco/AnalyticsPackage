//
//  AnalyticsEvent.swift
//  
//
//  Created by clijauco on 7/27/22.
//

public struct AnalyticsEvent {
    var name: String
    var parameters: [String: Any]
    
    public init(
        name: String,
        parameters: [String: Any] = [:]
    ) {
        self.name = name
        self.parameters = parameters
    }
}

public struct AnalyticsUserProperty {
    var name: String
    var value: String
    
    public init(name: String, value: String = "") {
        self.name = name
        self.value = value
    }
    
}

