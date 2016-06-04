//
//  StopRepository.swift
//  indycivichackathon2016
//
//  Created by Matthew Lathrop on 6/4/16.
//  Copyright © 2016 Connect Think LLC. All rights reserved.
//

import Foundation
import SQLite

public struct StopRepository {
    
    public static func retrieveAll() -> [Stop] {
        var ret = [Stop]()
        for row in try! DatabaseHandler.db.prepare("SELECT * FROM stops") {
            ret.append(stopFromRow(row))
        }
        return ret
    }
    
    private static func stopFromRow(row: [Binding?]) -> Stop {
        var stop = Stop()
        
        if let lat = row[0] as? Double {
            stop.lat = lat
        }
        
        if let zoneId = row[1] as? String {
            stop.zoneId = zoneId
        }
        
        if let lon = row[2] as? Double {
            stop.lon = lon
        }
        
        if let id = row[3] as? String {
            stop.id = id
        }
        
        if let desc = row[4] as? String {
            stop.desc = desc
        }
        
        if let name = row[5] as? String {
            stop.name = name
        }
        
        if let locationType = row[6]! as? Int64 {
            stop.locationType = Int(locationType)
        }
        
        if let routes = row[7] as? String {
            stop.routes = routes
        }
        
        return stop;
    }
    
}

