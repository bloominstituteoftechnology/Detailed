import UIKit

class TableViewController : UITableViewController {
    
    
    
    
    let reuseIdentifier = "cell"
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Model.shared.index = indexPath.row
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.count()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        cell.imageView?.image = Model.shared.image(for: Model.Animation.allCases[indexPath.row].rawValue)
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let destination = segue.destination as? DetailViewController else { return }
        destination.character = Model.Animation.allCases[indexPath.row]
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}
