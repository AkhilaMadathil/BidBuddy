//
//  Request.swift
//  BidBuddy
//
//  Created by MAKL on 05/01/19.
//  Copyright © 2019 Akhila. All rights reserved.
//

import UIKit
import Foundation

struct Car: Decodable
{
    var carName: String
    var carType: String
    var price: Int
    var carYear: Int
    
    init() {
        self.carName =  "AB122121223"
        self.carType = "Sedan"
        self.price = 100000
        self.carYear = 2003
    }
    
    enum CodingKeys: String, CodingKey
    {
        case carName
        case carType
        case price
        case carYear
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.carName = try container.decode(String.self, forKey: .carName)
        self.carType = try container.decode(String.self, forKey: .carType)
        self.price = try container.decode(Int.self, forKey: .price)
        self.carYear = try container.decode(Int.self, forKey: .carYear)
    }
}


