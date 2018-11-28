import Foundation
import SpriteKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var animationImage: UIImageView!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return Model.shared.numberOfPeople()
        }
    }
}
