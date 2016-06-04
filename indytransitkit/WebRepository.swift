//
//  WebRepository.swift
//  indycivichackathon2016
//
//  Created by Matthew Lathrop on 6/4/16.
//  Copyright © 2016 Connect Think LLC. All rights reserved.
//

import Foundation

public class WebRepository {
    
    private static let queue = NSOperationQueue()
    
    public class func performExampleWebRequest() {
        let request = ExampleWebRequest()
        request.completionBlock = {
            if request.error != nil {
                //TODO: handle error here
            }
            
            if let result = request.result {
                //TODO: handle result here
            }
        }
        queue.addOperation(request)
    }
    
}
