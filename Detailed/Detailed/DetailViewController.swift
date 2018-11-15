import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var character : Model.Animation?
        
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        guard let character = character else {return}
        
        let cells = Model.shared.cells(for: character)
        label.text = character.rawValue
        
        
        imageView.animationImages = cells
        imageView.animationRepeatCount = 0
        imageView.animationDuration = TimeInterval(0.0/2)
        imageView.startAnimating()
    }
    
    
    
}
