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
        let imageName = "\(character.rawValue)000"
        guard let image = UIImage(named: imageName) else { return UIImage() }
        return image
        
    }
        
    func cells(for character: Animation) -> [UIImage] {
        // RETURN AN ARRAY OF IMAGES FOR THE GIVEN CHARACTER HER
        var imageArray: [UIImage] = []
        
        guard let charIndex = cellCounts.index(forKey: character) else { return [] }
        let maxFrameInt = cellCounts.values[charIndex]
        
        for i in 1..<maxFrameInt {
            let charName = character.rawValue
            let paddedInt = i.stringPadded(to: 3)
            let imageName = charName + paddedInt
            let image = UIImage(named: imageName) ?? UIImage()
            imageArray.append(image)
        }
        
        print(imageArray)
        return imageArray
    }
    
//    func cells(for character: Animation) -> [UIImage] {
//        // RETURN AN ARRAY OF IMAGES FOR THE GIVEN CHARACTER HERE // cellCounts?
//
//        var imageArray: [UIImage] = []
//        var imageNumber = 1
//        var characterName = "\(character)00\(imageNumber)"
//
//        for value in cellCounts.values {
//
//            if imageNumber < 10 {
//                characterName = "\(character)00\(imageNumber)"
//            } else if imageNumber >= 10 {
//                characterName = "\(character)0\(imageNumber)"
//            }
//            guard let characterNameImage = UIImage(named: characterName) else { return [UIImage()] }
//            imageArray.append(characterNameImage)
//            imageNumber += 1
//            print(imageArray)
//        }
//        return imageArray
//    }
    
}

