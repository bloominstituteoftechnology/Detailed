
import UIKit

class DetailViewController: UIViewController {
    
    var character = Character?.self
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // FIXME: Error: Initializer for conditional binding must have Optional type, not 'Character?.Type'
        // Ensure we have a character to present
        guard let character = character else { return }
        
        let cells = Model.shared.cells(for: character)
        imageView.animationImages = cells
        imageView.animationRepeatCount = 0
        // Amount of time it takes to go through one cycle of the images
        imageView.animationDuration = 0.5
        imageView.startAnimating()
        
    }
    
    @IBOutlet weak var imageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
}
