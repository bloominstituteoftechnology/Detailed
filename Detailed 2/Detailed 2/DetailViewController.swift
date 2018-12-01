import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var spriteName: UILabel!

    @IBOutlet weak var animatedSpriteImageView: UIImageView!
    
    // Add an optional character property
    var character: CharacterAssetModel.Animation?

    // and implement viewWillAppear, which sets the title and loads the image view with its animation.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Ties into the optional that we had earlier.
        guard let character = character else { fatalError( "Character property not found." ) }
        
        // The character name from the Animation Enum
        spriteName.text = character.rawValue
        
        // The first image to display in the animation
        animatedSpriteImageView.image = CharacterAssetModel.shared.characterInitialStill(for: character)
        
        // Here's how you perform UIImageView animation.
        // You must figure out how long each animation should last at 15 frames per second.
        // Remember to use Double arithmetic.
        
        let characterAnimation = CharacterAssetModel.shared.characterAnimation(for: character)
        animatedSpriteImageView.animationImages = characterAnimation
        animatedSpriteImageView.animationRepeatCount = 0
        let animatedFPS: Double = (Double(CharacterAssetModel.shared.characterAnimation(for: character).count)/15)
        animatedSpriteImageView.animationDuration = animatedFPS
        animatedSpriteImageView.startAnimating()

    }
    
    // CharacterAssetModel.shared.characterImageStillCounts.index(forValue: )
    
}
