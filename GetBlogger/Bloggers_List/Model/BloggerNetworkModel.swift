//
//  Blogger.swift
//  GetBlogger
//
//  Created by Daniyar Agaltsov on 8/25/20.
//  Copyright © 2020 Agaltsov. All rights reserved.
//


import Foundation
import Firebase





struct BloggerNetworkModel: Codable{
    var bloggerID: String?
    var name: String
    var IGUsername: String
    var TGUsername: String
    var age: String
    var blogTopic: [String]
    var storiesPrice: String
    var postPrice: String
    var stopList: [String]
    var barterCoop: String
    var city: String
    
    enum CondingKeys: String, CodingKey{
        case name
        case IGUsername
        case TGUsername
        case age
        case blogTopic
        case storiesPrice
        case postPrice
        case stopList
        case barterCoop
        case city
    }
    

    
 
    
    
}
