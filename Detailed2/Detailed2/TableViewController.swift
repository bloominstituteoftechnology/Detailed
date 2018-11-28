import UIKit
import Foundation

class TableViewController: UITableViewController {
    
    let reuseIdentifier = "cell"
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.characters.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? TableViewCell else { (fatalError("Unable to dequeue cell")) }
        
        
        let character = Model.shared.characters[indexPath.row]
        cell.cellImage.image = Model.shared.image(for: character)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        guard let destination = segue.destination as? DetailViewController else { return }
        
        let character = Model.shared.characters[indexPath.row]
        destination.character = character
    }
}
