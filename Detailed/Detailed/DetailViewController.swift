import Foundation
import UIKit

class DetailViewController: UIViewController {
    var character: Model.Animation?
    
    @IBOutlet weak var detailBeastNameLabel: UILabel!
    @IBOutlet weak var detailBeastImageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let character = character else {return}
        detailBeastNameLabel.text = Model.Animation.bot.rawValue  // fix this later!!!
        detailBeastImageView.image = Model.shared.image(for: character)

        let cells = Model.shared.cells(for: character)
        
        detailBeastImageView.animationImages = cells
        detailBeastImageView.animationRepeatCount = 0
        detailBeastImageView.animationDuration = 1.0 // Fix to compute proper time depending on number of frames. 
        detailBeastImageView.startAnimating()
    }
}

