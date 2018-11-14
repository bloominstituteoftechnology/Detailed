import UIKit

class TableViewController: UITableViewController {
    
    weak var entrycell: TableViewCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.characters.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseIdentifier = "entryCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? TableViewCell// conditional cast
            else {fatalError("unable to dequeEntryCell")}
        
        let character = Model.shared.characters[indexPath.row]
        cell.imageViewInCell?.image = Model.shared.image(for: character)
    
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        guard let destination = segue.destination as? DetailViewController else {return} // could put fatal errors
        
        let character = Model.shared.characters[indexPath.row]
        
        destination.character = character
    }
    
}

