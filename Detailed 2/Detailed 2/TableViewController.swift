import UIKit

class TableViewController: UITableViewController {
   // static let reuseIdentifier = "spriteCell"
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CharacterAssetModel.shared.characters.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell else { fatalError( "Unable to dequeue proper cell" )}
        
        let character = CharacterAssetModel.shared.characters[indexPath.row]
        cell.spriteImageView?.image = CharacterAssetModel.shared.characterInitialStill(for: character)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailViewController else { fatalError("Could not reach destination")}
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let character = CharacterAssetModel.shared.characters[indexPath.row]
        destination.character = character
    }
    
    
}
