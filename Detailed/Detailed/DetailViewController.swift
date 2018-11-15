import UIKit


class DetailViewController: UIViewController {
    
    var character: Character?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let character = character else { return }
        talkingCharacterImageView.UIImageView = character.Model.shared.image.talkingCharacterUIImage
        talkingCharacterLabel.text = Model.shared.characters
    }
    
    @IBOutlet weak var talkingCharacterLabel: UILabel!
    
    @IBOutlet weak var talkingCharacterImageView: UIImageView!
    
    let cells = Model.shared.cells(for: character)
    imageView.animationImages = cells
    imageView.animationRepeatCount = 0
    //imageView.animationDuration = // FIGURE THIS PART OUT
    imageView.animationDuration = Double(cellCounts.values)/Double(60)
    imageView.startAnimating()
    
    
}
