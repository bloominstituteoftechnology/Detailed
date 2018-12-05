//
//  TableViewController.swift
//  Sprint 2 Review project - Detailed
//
//  Created by Sameera Leola on 12/4/18.
//

import UIKit

class TableViewController: UITableViewController {
    
    //What do we have to do?
    //Specify the number of sections
    override func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }
    
    //Define the number of cells in the section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.characters.count
    }
    
    //Dequeue the cells and populate the imageview
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Dequeue the cells. Cast as a TableViewCell type
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell
            else { fatalError("Unable to dequeue tableview cell of type TableViewCell")}
        
        //Get the 000 character image to be displayed in this row
        let character = Model.shared.characters[indexPath.row]
        cell.characterImage.image = Model.shared.image(for: character)
        return cell
    }
    
    //Perform the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            let destination = segue.destination as? DetailViewController,
            let indexPath = tableView.indexPathForSelectedRow
        else { return }
        
        let character = Model.shared.characters[indexPath.row]
        destination.theCharacter = character
    }
    
    
    
}
