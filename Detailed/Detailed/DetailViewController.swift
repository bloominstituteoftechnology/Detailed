import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var character : Model.Animation?
        
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        guard let character = character else {return}
        
        let cells = Model.shared.cells(for: character)
        
        imageView.animationImages = cells
        imageView.animationRepeatCount = 0
        imageView.animationDuration = 9
        imageView.startAnimating()
    }
    
    
    
}
