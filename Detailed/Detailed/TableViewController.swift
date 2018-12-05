//
//  TableViewController.swift
//  Detailed
//
//  Created by Vijay Das on 12/4/18.
//  Copyright © 2018 Vijay Das. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
   
     override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Model.shared.characters.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell else { fatalError("Could not dequeue cell") }

        // Configure the cell...
        
        cell.tableImageView.image = Model.shared.image(for: Model.shared.character(forIndex: indexPath.row))
        
        return cell
    }
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    guard let indexPath = tableView.indexPathForSelectedRow else { return }
    guard let destination = segue.destination as? DetailViewController else { return }
    
    destination.character = Model.shared.character(forIndex: indexPath.row)
    
    }
    
   override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
   

}
