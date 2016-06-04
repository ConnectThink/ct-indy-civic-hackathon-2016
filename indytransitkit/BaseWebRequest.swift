//
//  BaseWebRequest.swift
//  indycivichackathon2016
//
//  Created by Matthew Lathrop on 6/4/16.
//  Copyright © 2016 Connect Think LLC. All rights reserved.
//

import Foundation
import ObjectMapper

public class BaseWebRequest: NSOperation, NSURLSessionDataDelegate {
    
    public var error: ErrorType?
    public var result: AnyObject?
    
    // DATA
    private var session: NSURLSession?
    private var sessionDataTask: NSURLSessionDataTask?
    private var incomingData = NSMutableData()
    
    public override init() {
    }
    
    public override func start() {
        if (cancelled == true) {
            state = .Finished
            return
        }
        
        state = .Executing
        
        session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration(), delegate: self, delegateQueue: nil)
        
        if let url = NSURL(string: urlString()) {
            sessionDataTask = session?.dataTaskWithURL(url)
            sessionDataTask?.resume()
        }
    }
    
    public func URLSession(session: NSURLSession, dataTask: NSURLSessionDataTask, didReceiveResponse response: NSURLResponse, completionHandler: (NSURLSessionResponseDisposition) -> Void) {
        
        if cancelled {
            state = .Finished
            dataTask.cancel()
            return
        }
        
        //TODO: Check the response code and react appropriately
        
        completionHandler(.Allow)
    }
    
    public func URLSession(session: NSURLSession, dataTask: NSURLSessionDataTask, didReceiveData data: NSData) {
        
        if cancelled {
            state = .Finished
            dataTask.cancel()
            return
        }
        
        incomingData.appendData(data)
    }
    
    public func URLSession(session: NSURLSession, task: NSURLSessionTask, didCompleteWithError error: NSError?) {
        
        if cancelled {
            state = .Finished
            task.cancel()
            return
        }
        
        if let safeError = error {
            print("Failed to receive response: \(safeError)")
            self.error = safeError
            state = .Finished
            task.cancel()
            return
        }
        
        state = .Finished
    }
    
    // MARK: - Override Methods
    
    public func urlString() -> String {
        return "www.google.com"
    }
    
    // MARK: - Types
    
    private enum State {
        case Ready, Executing, Finished
        func keyPath() -> String {
            switch self {
            case Ready:
                return "isReady"
            case Executing:
                return "isExecuting"
            case Finished:
                return "isFinished"
            }
        }
    }
    
    // MARK: - Properties
    
    private var state = State.Ready {
        willSet {
            willChangeValueForKey(newValue.keyPath())
            willChangeValueForKey(state.keyPath())
        }
        didSet {
            didChangeValueForKey(oldValue.keyPath())
            didChangeValueForKey(state.keyPath())
        }
    }
    
    // MARK: - NSOperation
    
    public override var ready: Bool {
        return super.ready && state == .Ready
    }
    
    public override var executing: Bool {
        return state == .Executing
    }
    
    public override var finished: Bool {
        return state == .Finished
    }
    
    public override var asynchronous: Bool {
        return true
    }
    
}
