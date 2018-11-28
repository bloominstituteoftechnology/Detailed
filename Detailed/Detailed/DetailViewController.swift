import Foundation
import UIKit


class DetailViewController: UIViewController {
    var character: Model.Animation?
    
    @IBOutlet weak var detailBeastNameLabel: UILabel!
    @IBOutlet weak var detailBeastImageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        guard let character = character else {fatalError("valid character not found")}
        detailBeastNameLabel.text = character.rawValue
        
        let cells = Model.shared.cells(for: character)
        let animationDur: Double = Model.shared.frames(character: character) 
        
        detailBeastImageView.animationImages = cells
        detailBeastImageView.animationRepeatCount = 0
        detailBeastImageView.animationDuration = animationDur
        detailBeastImageView.startAnimating()
    }
}

