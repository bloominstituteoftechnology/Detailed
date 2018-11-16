import Foundation
import UIKit

class TableViewController: UITableViewController {
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.Animation.allCases.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath)
        cell.imageView?.image = Model.shared.image(for: Model.Animation.allCases[indexPath.row])
        return cell
    }
    
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let destination = segue.destination as? DetailViewController else { return }
        destination.character = Model.shared.character(forIndex: indexPath.row)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello ")
    }
}
