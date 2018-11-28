
import UIKit

class TableViewController: UITableViewController {
    
    // Implement reuse identifier for each cell
    static let reuseIdentifier = "animationcell"
    
    // Number of rows = number of characters
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    // Cell's contents
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // get a cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "animationcell", for: indexPath)
        
        // set up the cell with the model object that we have
        cell.imageView?.image = Model.shared.image(for: Model.Animation.allCases[indexPath.row])
        
        // return the character back to the table view
        return cell
    }
    
    // Prepare for segue in order to pass information that the segue's destination will use to set up its views
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // fetch index path and view controller
        guard
            let destination = segue.destination as? DetailViewController,
            let indexPath = tableView.indexPathForSelectedRow
            else { return }
        
        // FIXME: Prepare-for-segue method that sets the character property for the detail view controller
        let character = Model.shared. // TODO: Fix this!
    }
}
