import UIKit


// Allows integers to be converted into strings with a certain amount of zeroes,
// based on the number that is passed in.
// e.g. - let tripleZeroes = 0.stringPadded(to: 3) returns "000"
// this is smart, it will only apply the amount of zeroes necessary befor the image.
extension Int {
    fileprivate func stringPadded(to count: Int) -> String {
        var string = String(self)
        // sets itself as a string
        while string.count < count { string = "0" + string }
        return string
    }
}


// The code we include in our model for some reason
class CharacterAssetModel {
    // Allows you to use the methods and properties from the model elsewhere.
    static let shared = CharacterAssetModel()
    // still not sure what this does, but it seems to restrict the initializer to the model.
    private init() {}
    
    // enumeration of something called Animation, with each one referring to an image name.
    // this will be useful for stuff regarding the file names
    enum Animation: String, CaseIterable {
        case bureaucrat = "Talking Bureaucrat"
        case frog = "Talking Frog"
        case ranger = "Talking Ranger"
        case vendor = "Talking Vendor"
        case bot = "Talking Woodbot"
    }
    
    // a dictionary or Key/Value pair.
    // Key: Animation.character, Value: amount of stills (still images) per character
    private let characterImageStillCounts = [Animation.bureaucrat: 26, .frog: 62, .ranger: 86, .vendor: 36, .bot: 69]
    
    // Make an array that's type Animation.
    var characters: [Animation] {
        // allCases returns all the values in Animation.
        return Animation.allCases
    }
    
    // This function's job is to produce only the first image of each sprite
    func characterInitialStill(for character: Animation) -> UIImage {
        // RETURN THE 000 IMAGE FOR THE GIVEN CHARACTER HERE
        
        // tripleZeroes taps into the Int type extension to produce "000", by passing in a count of 3
        let tripleZeroes = 0.stringPadded(to: 3)
        // I don't know who is going to pass in the character name, but the raw value will be extracted
        // and then the tripleZeroes will be "appended" to it, resulting in "Talking Character000"
        let imageName = "\(character.rawValue)\(tripleZeroes)"
        
        // Letting an image be set to a physical image with the image name above.
        // Not sure why we have UIImage in the return, as returning a fatal error would make more sense.
        guard let characterStillImage = UIImage(named: imageName) else { return UIImage() }
        
        // Then we return only that image.
        return characterStillImage
    }
    
    
    func characterAnimation(for character: Animation) -> [UIImage] {
        // RETURN AN ARRAY OF IMAGES FOR THE GIVEN CHARACTER HERE
        
        /* String padding attempt 1
        var amountOfZeroes = 0
        let zeroes = 0.stringPadded(to: amountOfZeroes)
        // print(zeroes)
        */
        
//        let doubleZeroes = 0.stringPadded(to: 2)
//        let singleZero = 0.stringPadded(to: 1)
        
        // This is redundant and should be defined earlier, elsewhere.
        let tripleZeroes = 0.stringPadded(to: 3)
        
        var characterImageArray: [UIImage] = []
        
        guard let currentCharacter = characterImageStillCounts[character] else { fatalError("reference to character does not exist")}
        
        var characterImageName = ""
        // Check note in Ulysses for better code.
        for still in 0 ..< currentCharacter {
//            if still < 10 {
                // amountOfZeroes = 2
            characterImageName = "\(character.rawValue)\(tripleZeroes)\(still)"
//            } else {
//                // amountOfZeroes = 1
//                characterImageName = "\(character.rawValue)\(tripleZeroes)\(still)"
//            }
            guard let talkingCharacterImage = UIImage(named: characterImageName) else { fatalError("Can't name UIImage")}
            characterImageArray.append(talkingCharacterImage)
        }
        
        /* Code Iyin gave us
        guard let index = characterImageStillCounts.index(forKey: character) else { return [] }
        let max = characterImageStillCounts.values[index]
        */

        return characterImageArray
    }
}
