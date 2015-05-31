//
//  OtherViewController.swift
//  kittens_mf
//
//  Created by Matthew Falzon on 28/05/2015.
//  Copyright (c) 2015 Matthew Falzon. All rights reserved.
//

import Foundation
import UIKit

enum KittenType:String {
    case Cute = "Cute"
    case Ragdoll = "Ragdoll"
}

class KittenFilter: UIViewController {
    var kittenType:KittenType? = nil
    
    @IBOutlet weak var previousChoiceLabel: UILabel!
    let previousChoiceLabelPrefix = "Previous Choice:"
    var previousChoiceText = ""
    
    override func viewDidLoad() {
        previousChoiceLabel.text = "\(previousChoiceLabelPrefix) \(previousChoiceText)"
    }
    
    func perpareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let segueIdentifier = segue.identifier {
            switch segueIdentifier {
            case "cuteButton":
                kittenType = KittenType.Cute
                
            case "ragdollButton":
                kittenType = KittenType.Ragdoll
                
            case "clearFitlerButton":
                kittenType = nil
                
            default:
                break
            }
        }
    }
}


