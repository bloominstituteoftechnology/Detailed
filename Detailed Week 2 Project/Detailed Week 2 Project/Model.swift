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
        let characterName = "\(character.rawValue)000"
        guard let image = UIImage(named: characterName) else { return UIImage() }
        
        return image
        }

    func cells(for character: Animation) -> [UIImage] {
        var characterArray: [UIImage] = []
        guard let characterIndex = cellCounts.index(forKey: character) else { return []}
        let frames = cellCounts.values[characterIndex]
        
        for index in 1..<frames {
            let charName = character.rawValue
            let numPadding = index.stringPadded(to: 3)
            let
        }
    }
}
