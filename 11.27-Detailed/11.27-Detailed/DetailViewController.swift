import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var imageViewX: UIImageView!
    
    var character: Character?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
    let cells = Model.shared.cells(for: character)
    imageViewX.animationImages = cells
    imageViewX.animationRepeatCount = 0
    imageViewX.animationDuration = 15
    imageViewX.startAnimating()
    }
}
