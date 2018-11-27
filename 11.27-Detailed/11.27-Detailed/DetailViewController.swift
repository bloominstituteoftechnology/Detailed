import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var character: String? = ""
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
    
    let cells = Model.shared.cells(for: character)
    imageView.animationImages = cells
    imageView.animationRepeatCount = 0
    imageView.animationDuration = 15
    imageView.startAnimating()
}
}
