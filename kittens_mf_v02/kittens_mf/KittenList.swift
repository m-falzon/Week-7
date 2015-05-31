//
//  ViewController.swift
//  kittens_mf
//
//  Created by Matthew Falzon on 28/05/2015.
//  Copyright (c) 2015 Matthew Falzon. All rights reserved.
//

import UIKit

class KittenList: UIViewController {
    let filterKittenTextPrefix = "Filtering Kittens by:"
    var filterKittenText = ""
    var kittenFilterType:KittenType? = nil
    
    @IBOutlet weak var filteringKittensTextLabel: UILabel!
    @IBOutlet weak var cuteTextLabel: UILabel!
    @IBOutlet weak var ragdollTextLabel: UILabel!
    
    @IBOutlet weak var cuteView: UIImageView!
    @IBOutlet weak var ragdollView: UIImageView!
    
    override func viewDidLoad() {
        navigationItem.setHidesBackButton(true, animated: false)
    }
    
    override func viewDidAppear(animated: Bool) {
        updateUI()
    }
    
// Segue
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let kittenFilter = segue.destinationViewController as? KittenFilter {
        kittenFilter.previousChoiceText = filterKittenText
        }
    }
    
    @IBAction func unwindToKittensListView(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let kittensFilter = segue.destinationViewController as? KittenFilter {
            if let kittenType = kittensFilter.kittenType {
                kittenFilterType = kittenType
                filterKittenText = kittenType.rawValue
            } else {
                filterKittenText = "None"
                kittenFilterType = nil
            }
        }
    }
    
// Update UI
    
    private func updateUI() {
        if let validKittenFilterType = kittenFilterType {
            switch validKittenFilterType {
            case .Cute:
                cuteView.hidden = false
                ragdollView.hidden = true
                
            case .Ragdoll:
                cuteView.hidden = true
                ragdollView.hidden = false
                
            default:
                break
            }
        } else {
            cuteView.hidden = false
            ragdollView.hidden = false
        }
        
        filteringKittensTextLabel.text = "\(filterKittenTextPrefix) \(filterKittenText)"
    }
}



