import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var character : Model.Animation?
        
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        character = Model.shared.getCharacter()
        
        let cells = Model.shared.cells(for: character ?? Model.shared.characters[0])
        
        imageView.animationImages = cells
        imageView.animationRepeatCount = 0
        imageView.animationDuration = 3
        imageView.startAnimating()
    }
    
    
    
}
