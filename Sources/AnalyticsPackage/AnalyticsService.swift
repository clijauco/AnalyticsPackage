//
//  AnalyticsService.swift
//  
//
//  Created by clijauco on 7/28/22.
//

public protocol AnalyticsProvider {
    func logEvent(name: String, params:[String:Any])
    func setScreenName(name: String)
    func setUserProperty(name:String, value:String)
    func addUserProperties(userProperties:[String:String])
}

