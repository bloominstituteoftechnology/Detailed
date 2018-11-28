import UIKit

extension Int {
    fileprivate func stringPadded(to count: Int) -> String {
        var string = String(self)
        while string.count < count { string = "0" + string }
        return string
    }
}

class Model {
    static let shared = Model()
    private init() {}
    
    enum Animation: String, CaseIterable {
        case bureaucrat = "Talking Bureaucrat"
        case frog = "Talking Frog"
        case ranger = "Talking Ranger"
        case vendor = "Talking Vendor"
        case bot = "Talking Woodbot"
    }
    
    private let cellCounts = [Animation.bureaucrat: 26, .frog: 62, .ranger: 86, .vendor: 36, .bot: 69]
    
    var characters: [Animation] {
        return Animation.allCases
    }
    
    func image(for character: Animation) -> UIImage {
        // RETURN THE 000 IMAGE FOR THE GIVEN CHARACTER HERE
        let characterName = character.rawValue
        let image = "\(characterName)000"
        guard let correctImage = UIImage(named: image) else { fatalError("Image not there") }
        return correctImage
    }
    
    func cells(for character: Animation) -> [UIImage] {
        // RETURN AN ARRAY OF IMAGES FOR THE GIVEN CHARACTER HERE
        //An array of images that is initially empty
        var characterImageArray: [UIImage] = []
        
        guard let characterIndex = cellCounts.index(forKey: character) else { return [] }
        let maxFrameInt = cellCounts.values[characterIndex]
        
        for i in 0...maxFrameInt {
            let charName = character.rawValue
            let paddedInt = i.stringPadded(to: maxFrameInt)
            let imageName = charName + paddedInt
            let image = UIImage(named: imageName) ?? UIImage()
            characterImageArray.append(image)
        }
        return characterImageArray
    }
        
    }

