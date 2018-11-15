import UIKit

class TableViewController: UITableViewController {
    static let reuseIdentifier = "tableview cell"
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell
                else { fatalError("Unable to dequeue entry cell") }
            
                let character = Model.shared.character(forIndex: indexPath.row)
            
            return cell
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow
            else { return }
        guard let destination = segue.destination as? DetailViewController
            else { return }
  
        destination.character = Model.shared.character(forIndex: indexPath.row)

    }
}
