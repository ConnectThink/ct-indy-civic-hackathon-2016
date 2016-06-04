//
//  DatabaseHandler.swift
//  indycivichackathon2016
//
//  Created by Matthew Lathrop on 6/4/16.
//  Copyright © 2016 Connect Think LLC. All rights reserved.
//

import Foundation
import SQLite

public class DatabaseHandler {
    
    private static var _db: Connection?
    
    public class var db: Connection {
        if _db == nil {
            let path = NSBundle(forClass: DatabaseHandler.self).pathForResource("indyGoData", ofType: "sqlite")!
            _db = try! Connection(path, readonly: true)
        }
        return _db!
    }
    
}
