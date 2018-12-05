
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var labelText: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var charecter: Model.Animation?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let charecter = charecter else { return }
        labelText.text = charecter.rawValue
        let cells = Model.shared.cells(for: charecter)
        imageView.animationImages = cells
        imageView.animationRepeatCount = 0
        imageView.animationDuration = 3
        imageView.startAnimating()
    }
}

