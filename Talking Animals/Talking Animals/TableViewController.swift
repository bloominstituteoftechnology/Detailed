//
//  TableViewController.swift
//  Talking Animals
//
//  Created by Stuart on 11/27/18.
//  Copyright © 2018 Stuart. All rights reserved.
//

import UIKit

class TableViewContoller: UITableViewController {
    
    let reuseIdentifier = "TableViewCell"
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.characters.count
    }
    
    
  
}
