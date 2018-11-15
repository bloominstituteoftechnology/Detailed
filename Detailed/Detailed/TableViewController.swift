import Foundation
import UIKit

class TableViewController: UITableViewController {
    let reuseIdentifier = "creature overview"
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //print(Model.shared.characters)
        return Model.shared.characters.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? TableViewCell else { fatalError("unable to decue overview cell") }
        
        cell.CellBeastImage.image = Model.shared.image(for: Model.shared.whichCharacter(forIndex: indexPath.row))
        
        
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let destination = segue.destination as? DetailViewController else { return }
        
        destination.character = Model.shared.whichCharacter(forIndex: indexPath.row)
    }
}
