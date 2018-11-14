import UIKit

class DetailViewController: UIViewController {
    
    var character : Character?
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var imageBig: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let cells = Model.shared.cells(for: character)
        imageBig.animationImages = cells
        imageBig.animationRepeatCount = 0
        imageBig.animationDuration = // FIGURE THIS PART OUT
        imageBig.startAnimating()
    }
}
