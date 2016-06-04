//
//  StationInformation.swift
//  indycivichackathon2016
//
//  Created by Zachary Simpson on 6/4/16.
//  Copyright © 2016 Connect Think LLC. All rights reserved.
//

import Foundation
import ObjectMapper

public struct StationInformation: Mappable {
    public var id = "ERROR"
    public var name = "ERROR"
    public var shortName = "ERROR"
    public var latitude: Double = 0.0
    public var longitude: Double = 0.0
    public var address = "ERROR"
    public var crossStreet = "ERROR"
    public var regionId = "ERROR"
    public var postCode = "ERROR"
    public var rentalMethods = [RentalMethod]()
    public var capacity = 0
    
    public init() {
        
    }
    
    // MARK: - Mappable
    
    public init?(_ map: Map) {
        
    }
    
    public mutating func mapping(map: Map) {
        id <- map["station_id"]
        name <- map["name"]
        shortName <- map["short_name"]
        latitude <- map["lat"]
        longitude <- map["lon"]
        address <- map["address"]
        crossStreet <- map["cross_street"]
        regionId <- map["region_id"]
        postCode <- map["post_code"]
        rentalMethods <- map["rental_methods"]
        capacity <- map["capacity"]
    }
    
}