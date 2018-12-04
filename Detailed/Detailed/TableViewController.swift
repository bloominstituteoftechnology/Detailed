//
//  TableViewController.swift
//  Detailed
//
//  Created by Stuart on 12/4/18.
//  Copyright © 2018 Stuart. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let reuseIdentifier = "cell"

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Model.shared.index = indexPath.row
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.characters.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? TableViewCell else { fatalError("unable to dequeue TableViewCell")}
        
        let character = Model.shared.characters[indexPath.row]
        cell.characterView?.image = Model.shared.image(for: character)
        
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
