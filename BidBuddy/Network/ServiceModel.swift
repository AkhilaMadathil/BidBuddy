//
//  AppDelegate.swift
//  LiveBidding
//
//  Created by Akshay Bhat on 05/01/19.
//  Copyright © 2019 Arjun Baru. All rights reserved.
//

import Foundation

struct Story {
    var id:String
    var type:String
    var authorName:String
    var headline:String
    var slug:String
    var imageUrl:String
    var summary:String
}

struct Collection {
    var id:String
    var type:String
    var name:String
    var url:String
    var slug:String
}

struct ItemList {
    var name:String
    var summary:String
    var items:[Any]
}


