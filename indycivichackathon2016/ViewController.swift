//
//  ViewController.swift
//  indycivichackathon2016
//
//  Created by Matthew Lathrop on 6/4/16.
//  Copyright © 2016 Connect Think LLC. All rights reserved.
//

import UIKit
import indytransitkit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        StopRepository.retrieveAll()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

