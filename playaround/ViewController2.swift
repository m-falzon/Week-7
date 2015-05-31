//
//  ViewController.swift
//  kittens_mf
//
//  Created by Matthew Falzon on 28/05/2015.
//  Copyright (c) 2015 Matthew Falzon. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    var textToOtherViewController = ""
    
    // Unwind segue
    
    @IBAction func unwindToPreviousViewController (segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }
    
    // Button segues
    
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