//
//  ViewController.swift
//  kittens_mf
//
//  Created by Matthew Falzon on 28/05/2015.
//  Copyright (c) 2015 Matthew Falzon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    let timer = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "timeToMoveOn", userInfo: nil, repeats: false)
    }
    
// Scheduled Timer segue
    
    func timeToMoveOn() {
        self.performSegueWithIdentifier("segueToScreen", sender: self)
    }

}