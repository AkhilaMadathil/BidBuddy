//
//  AppDelegate.swift
//  LiveBidding
//
//  Created by Akshay Bhat on 05/01/19.
//  Copyright © 2019 Arjun Baru. All rights reserved.
//

import Foundation

enum Endpoints {
    case authenticate
    case fetchRequests
    case fetchAudit
    case fetchProducts
}

struct RequestEndpoints {
    
    static func createRequest(_ type: Endpoints) -> URLRequest {
        
        switch type {
        case .authenticate:
            // Perform Authentication
            print("implement Auth")
            let url = "facebook.com/"
            return RestConnector.shared.createRequest(url, method: .GET, params: nil, headers: nil, encoding: .jsonEncode)
        case .fetchRequests:
            print("implement fetchRequests")
            return RestConnector.shared.createRequest("url", method: .GET, params: nil, headers: nil, encoding: .jsonEncode)
            
        case .fetchAudit:
            print("implement audit")
            return RestConnector.shared.createRequest("url", method: .GET, params: nil, headers: nil, encoding: .jsonEncode)
            
        case .fetchProducts:
            print("implement audit")
            return RestConnector.shared.createRequest("url", method: .GET, params: nil, headers: nil, encoding: .jsonEncode)
        }
    }
    
}
