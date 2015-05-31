//
//  OtherViewController.swift
//  kittens_mf
//
//  Created by Matthew Falzon on 28/05/2015.
//  Copyright (c) 2015 Matthew Falzon. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {

    @IBAction func unwindToOtherScreen (segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }
    
    var someText = ""
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        
        label.text = someText
        
    }

}
