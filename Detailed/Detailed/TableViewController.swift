import UIKit

class TableViewController: UITableViewController {
  
    let reuseIdentifier = "cell"
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.characters.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? TableViewCell else { fatalError("unable to dequeue TableViewCell")}
        
        return cell
    }
    
//   func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let indexPath = tableView.indexPathForSelectedRow else {return}
    
//    let destination = UIStoryboardSegue.self as? DetailViewController else {return}
//
//        destination.character = Model.shared.characters[Model.Animation]
    func prepare(for segue: TableViewController, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow
            else {return}
        guard segue.description is DetailViewController else {return}
        let image = Model.shared
    }

}

