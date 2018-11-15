import UIKit
import Foundation


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
    func whichCharacter(forIndex index: Int) -> Animation {
        return characters[index]
    }
    
    func image(for character: Animation) -> UIImage {
        // RETURN THE 000 IMAGE FOR THE GIVEN CHARACTER HERE
        //let characterName = character.rawValue
        let imageName = "\(character.rawValue)000"
        guard let validImage = UIImage(named: imageName) else {fatalError("no such image")}
        return validImage
    }
    
    func cells(for character: Animation) -> [UIImage] {
        // RETURN AN ARRAY OF IMAGES FOR THE GIVEN CHARACTER HERE
        let characterName = character
        print(characterName)
        var imageArray: [UIImage] = []
       
        guard let count = cellCounts[characterName] else {fatalError("no such character (characterName)")}
        print(count)
        
        for num in 0..<count {
            let paddedNum = num.stringPadded(to: 3)
            
            let imageName = "\(characterName.rawValue)\(paddedNum)"
            guard let validImage = UIImage(named: imageName) else {fatalError("no such image")}
            imageArray.append(validImage)
        }
        print(imageArray)
        return imageArray
    }
}

