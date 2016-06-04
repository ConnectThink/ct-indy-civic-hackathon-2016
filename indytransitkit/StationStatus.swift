//
//  StationStatus.swift
//  indycivichackathon2016
//
//  Created by Zachary Simpson on 6/4/16.
//  Copyright © 2016 Connect Think LLC. All rights reserved.
//

import Foundation

public struct StationStatus {
    public var station_id = -1
    public var num_bikes_available = -1
    public var num_bikes_disabled = -1
    public var num_docks_available = -1
    public var num_docks_disabled = -1
    public var is_installed = -1
    public var is_renting = -1
    public var is_returning = -1
    public var last_reported = "ERROR"
}