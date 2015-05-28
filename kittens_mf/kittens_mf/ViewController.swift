//
//  ViewController.swift
//  kittens_mf
//
//  Created by Matthew Falzon on 28/05/2015.
//  Copyright (c) 2015 Matthew Falzon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var textToOtherViewController = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    let timer = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "timeToMoveOn", userInfo: nil, repeats: false)
    }
    
    func timeToMoveOn() {
        self.performSegueWithIdentifier("segueToScreen", sender: self)
    }
    
    @IBAction func unwindToPreviousViewController (segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let otherViewController = segue.destinationViewController as! OtherViewController
        otherViewController.someText = textToOtherViewController
    }

    @IBAction func button1Tapped(sender: AnyObject) {
        textToOtherViewController = "Hello from Button 1"
        performSegueWithIdentifier("segueToScreen2", sender: self)
    }

    @IBAction func button2Tapped(sender: AnyObject) {
        textToOtherViewController = "Hello from Button 2"
        performSegueWithIdentifier("segueToScreen2", sender: self)
    }
}

