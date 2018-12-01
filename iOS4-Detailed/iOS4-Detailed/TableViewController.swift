import UIKit

class TableViewController: UITableViewController {
    
    
    
    // number of sections
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
       
    // number of rows
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.characters.count
    }
    
    // cellForRowAt
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell else { fatalError("Could not dequeue cell") }
        
        // code to setup the tableview cell
        
        cell.tableImage.image = Model.shared.image(for: Model.shared.character(forIndex: indexPath.row))
        
        
        return cell
    }
    
    // prepare for seque
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // identify the cell to go to detail view

        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let destination = segue.destination as? DetailViewController else { return }

        destination.character = Model.shared.character(forIndex: indexPath.row)

    }
    
    
}

