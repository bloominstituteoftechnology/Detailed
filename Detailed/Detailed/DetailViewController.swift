import Foundation
import UIKit


class DetailViewController: UIViewController {
    var character: Model.Animation? //= Model.Animation.bureaucrat
    
    @IBOutlet weak var detailBeastNameLabel: UILabel!
    @IBOutlet weak var detailBeastImageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        guard let character = character else {fatalError("valid character not found")}
        detailBeastNameLabel.text = character.rawValue  // fix this later!!!
        
        let cells = Model.shared.cells(for: character)
        
        detailBeastImageView.animationImages = cells
        detailBeastImageView.animationRepeatCount = 0
        detailBeastImageView.animationDuration = 1.0 // Fix to compute proper time depending on number of frames. 
        detailBeastImageView.startAnimating()
    }
}

