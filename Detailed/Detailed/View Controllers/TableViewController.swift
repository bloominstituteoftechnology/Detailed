import UIKit

class TableViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        // Come back to this.
    }
    
    let reuseIdentifier = "TableCell"
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? TableViewCell else { fatalError("Unable to deque character cell") }
        
        let character = Model.shared.characters[indexPath.row]
        cell.cellImageView.image = Model.shared.image(for: character)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        guard let destination = segue.destination as? DetailViewController else { return }
        destination.character = Model.shared.characters[indexPath.row] // ?? No Clue here. Should be Model.Animation
    }
    
}
