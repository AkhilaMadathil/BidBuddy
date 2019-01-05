//
//  AppDelegate.swift
//  LiveBidding
//
//  Created by Akshay Bhat on 05/01/19.
//  Copyright © 2019 Arjun Baru. All rights reserved.
//

import UIKit

final class RestInterface: NSObject {
    
    static var shared = RestInterface()

    func authenticateUser(completion : @escaping (User) -> Void)  {
        RestConnector.shared.executeRequest(Endpoints.authenticate) { data, error in

            guard let data = data else { return }
            do {
                let decoder = JSONDecoder()
                let result = try decoder.decode(User.self, from: data as! Data)
                completion(result)
            } catch let err {
                print("Er", err)
            }
        }
    }
    
    func fetchAllRequests(completion : @escaping ([Request]) -> Void)  {
        RestConnector.shared.executeRequest(RequestEndpoints.createRequest(.fetchRequests)) { data, error in
            
            guard let data = data else { return }
            do {
                let decoder = JSONDecoder()
                let result = try decoder.decode([Request].self, from: data as! Data)
                completion(result)
            } catch let err {
                print("Er", err)
            }
        }
    }
    
    func fetchProductDetails(completion : @escaping (Product) -> Void)  {
        RestConnector.shared.executeRequest(RequestEndpoints.createRequest(.fetchProducts)) { data, error in
            
            guard let data = data else { return }
            do {
                let decoder = JSONDecoder()
                let result = try decoder.decode(Product.self, from: data as! Data)
                completion(result)
            } catch let err {
                print("Er", err)
            }
        }
    }
    
    func fetchTrackingDetails(completion : @escaping (Audit) -> Void)  {
        RestConnector.shared.executeRequest(RequestEndpoints.createRequest(.fetchAudit)) { data, error in
            
            guard let data = data else { return }
            do {
                let decoder = JSONDecoder()
                let result = try decoder.decode(Audit.self, from: data as! Data)
                completion(result)
            } catch let err {
                print("Er", err)
            }
        }
    }
}

