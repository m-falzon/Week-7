//
//  ScrollViewController.swift
//  LovelyView
//
//  Created by Ryan Blunden on 4/06/2015.
//  Copyright (c) 2015 RabbitBird Pty Ltd. All rights reserved.
//

import Foundation
import UIKit

class ScrollViewController: UIViewController {
    
    @IBAction func unWindToScroll (segue: UIStoryboardSegue, sender: AnyObject?) {
    }

  @IBOutlet weak var imageView: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    imageView.sizeToFit()
    
    let scrollView = self.view as! UIScrollView
    scrollView.contentSize = imageView.frame.size
  }
}
