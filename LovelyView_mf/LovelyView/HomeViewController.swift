//
//  HomeViewController.swift
//  LovelyView
//
//  Created by Ryan Blunden on 4/06/2015.
//  Copyright (c) 2015 RabbitBird Pty Ltd. All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBAction func unWindToHome (segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }
    
  private var recipes:[Recipe] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.tableView.dataSource = self
    
    recipes = RecipeDataManager.sharedManager.findAll()
  }
    
//    private func setupNavBar() {
//        navigationController?.navigationBar.tintColor = UIColor(red: 16/255, green: 140/255, blue: 71/255, alpha: 1.0)
//        // NSAttributedSring!
//        navigationController?.navigationBar.titleTextAttributes = [
//            NSFontAttributeName: UIFont(name: "HelveticaNeue-Bold", size: 21)!, // font size
//            NSForegroundColorAttributeName: UIColor(red: 11/255, green: 82/255, blue: 62/255, alpha: 1.0), // font color
//        ]
//    }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return recipes.count
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let recipe = recipes[indexPath.row]
    var tableViewCell = UITableViewCell()
    tableViewCell.textLabel?.text = recipe.title
    tableViewCell.detailTextLabel?.text = recipe.description
    return tableViewCell
  }
  
  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    let recipe = recipes[indexPath.row]
    performSegueWithIdentifier(recipe.segue, sender: self)
  }
}
