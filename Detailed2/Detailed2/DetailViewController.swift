import UIKit
import Foundation

class DetailViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var detailImage: UIImageView!
    
    var character: Model.Animation?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let character = character else { return }
        
        let cells = Model.shared.cells(for: character)
        detailImage.animationImages = cells
        detailImage.animationRepeatCount = 0
        detailImage.animationDuration = 2 // FIGURE THIS PART OUT
            detailImage.startAnimating()
        
    }
    
    
}
