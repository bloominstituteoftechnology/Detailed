import Foundation
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
        let imageName = "\(characterName)000"
        guard let validImage = UIImage(named: imageName) else {fatalError("Image did not found.)")}
        return validImage
    }
    
    func cells(for character: Animation) -> [UIImage] {
        // RETURN AN ARRAY OF IMAGES FOR THE GIVEN CHARACTER HERE
        var imageArray: [UIImage] = []
        //for imageCount 0..< cellCount[
        let characterName = character.rawValue
        // This could be done alot better ... but I don't know
        let cellCount = ["Talking Bureaucrat": 26, "Talking Frog": 62, "Talking Ranger": 86, "Talking Vendor": 36, "Talking Woodbot": 69]
        var loopCounter = 0
        print(characterName)
        while loopCounter < cellCount[characterName]! {
            let numString = loopCounter.stringPadded(to: 3)
            imageArray.append(UIImage(named: "\(characterName)\(numString)")!)
            loopCounter += 1
        }
        return imageArray
    }
    
    func character(forIndex index: Int) ->  Animation {
        return characters[index]
    }
}
