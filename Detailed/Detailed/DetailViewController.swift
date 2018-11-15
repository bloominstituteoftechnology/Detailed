import UIKit

class DetailViewController: UIViewController {
    
    var character: Model.Animation?
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageBig: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let character = character else { return }
        
        let cells = Model.shared.cells(for: character)
        imageBig.animationImages = cells
        imageBig.animationRepeatCount = 0
        imageBig.animationDuration = 2 // FIGURE THIS PART OUT
        imageBig.startAnimating()
        
        // Set the label
        label.text = character.rawValue
    }
}
