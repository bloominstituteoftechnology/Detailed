import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var character: Model.Animation?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let character = character else { return }
        name.text = character.rawValue
        
        
        let cells = Model.shared.cells(for: character)
        image.animationImages = cells
        image.animationRepeatCount = 0
        image.animationDuration = Double(cells.count / 15)
        image.startAnimating()
        
    }
}
