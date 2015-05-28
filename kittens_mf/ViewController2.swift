//
//  ViewController2.swift
//  kittens_mf
//
//  Created by Matthew Falzon on 28/05/2015.
//  Copyright (c) 2015 Matthew Falzon. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    var someText = ""
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        
        label.text = someText
        
    }
}
