//
//  TableViewController.swift
//  Detailed
//
//  Created by Stuart on 12/4/18.
//  Copyright © 2018 Stuart. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let reuseIdentifier = "charactercell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.characters.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        cell.imageView?.image = Model.shared.image(for: Model.Animation.allCases[indexPath.row].rawValue)
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let destination = segue.destination as? DetailViewController else { return }
        destination.character = Model.Animation.allCases[indexPath.row]
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }


}
