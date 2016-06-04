//
//  BikeStation.swift
//  indycivichackathon2016
//
//  Created by Zachary Simpson on 6/4/16.
//  Copyright © 2016 Connect Think LLC. All rights reserved.
//

import Foundation
import CoreLocation

public struct BikeStation {
    public var stationId = -1
    public var stationName = "ERROR"
    public var address = "ERROR"
    public var numberOfDocks = -1
    public var latitude = 0
    public var longitude = 0
    public var location: {
        return CLLocation(latitude: this.latitude
            longitude: this.longitude);
    }
}