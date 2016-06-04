//
//  StationStatus.swift
//  indycivichackathon2016
//
//  Created by Zachary Simpson on 6/4/16.
//  Copyright © 2016 Connect Think LLC. All rights reserved.
//

import Foundation
import ObjectMapper

public struct StationStatus: Mappable {
    public var station_id = "ERROR"
    public var num_bikes_available = -1
    public var num_bikes_disabled = -1
    public var num_docks_available = -1
    public var num_docks_disabled = -1
    public var is_installed = -1
    public var is_renting = -1
    public var is_returning = -1
    public var last_reported = "ERROR"
    
    public init() {
        
    }
    
    // MARK: - Mappable
    
    public init?(_ map: Map) {
        
    }
    
    public mutating func mapping(map: Map) {
        station_id <- map["station_id"]
        num_bikes_available <- map["num_bikes_available"]
        num_bikes_disabled <- map["num_bikes_disabled"]
        num_docks_available <- map["num_docks_available"]
        num_docks_disabled <- map["num_docks_disabled"]
        is_installed <- map["is_installed"]
        is_renting <- map["is_renting"]
        is_returning <- map["is_returning"]
        last_reported <- map["last_reported"]
    }
    
}