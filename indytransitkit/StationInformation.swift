//
//  StationInformation.swift
//  indycivichackathon2016
//
//  Created by Zachary Simpson on 6/4/16.
//  Copyright © 2016 Connect Think LLC. All rights reserved.
//

import Foundation

public struct StationInformation {
    public var id = "ERROR"
    public var name = "ERROR"
    public var shortName = "ERROR"
    public var latitude: Double = 0.0
    public var longitude: Double = 0.0
    public var address = "ERROR"
    public var crossStreet = "ERROR"
    public var regionId = "ERROR"
    public var postCode = "ERROR"
    public var rentalMethods: RentalMethod = RentalMethod.UNKNOWN
    public var capacity = 0
    
}