import UIKit

class TableViewController: UITableViewController {
    
    let reuseIdentifier = "TableViewCell"
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.characters.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? TableViewCell else { fatalError("unable to dequeue TableViewCell")}
        
        let character = Model.shared.characters[indexPath.row]
        cell.imageAnimation?.image = Model.shared.image(for: character)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        
        guard let destination = segue.destination as? DetailViewController else {return}
        
        let character = Model.shared.characters[indexPath.row]
        destination.character = character
    }
}
