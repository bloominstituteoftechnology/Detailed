import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailImageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var character : Model.Animation?
        
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        guard let character = character else {return}
        
        let cells = Model.shared.cells(for: character)
        label.text = character.rawValue
        
        
        detailImageView.animationImages = cells
        detailImageView.animationRepeatCount = 0
        //The base framerate is 0.0, which is 30 frames per second. Divide that by 2 and you have 15 frames per second.
        detailImageView.animationDuration = TimeInterval(0.0/2)
        detailImageView.startAnimating()
    }
    
    
    
}
