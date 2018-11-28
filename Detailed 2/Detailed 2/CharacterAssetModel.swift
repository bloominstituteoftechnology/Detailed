import UIKit


// Allows integers to be converted into strings with a certain amount of zeroes,
// based on the number that is passed in.
// e.g. - let tripleZeroes = 0.stringPadded(to: 3) returns "000"
extension Int {
    fileprivate func stringPadded(to count: Int) -> String {
        var string = String(self)
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
        // and then the tripleZeroes will be appended to it, resulting in "Talking Character000"
        let imageName = "\(character.rawValue)\(tripleZeroes)"
        
        // Letting an image be set to a physical image with the image name above.
        guard let characterStillImage = UIImage(named: imageName) else { return UIImage() }
        
        // Then we return only that image.
        return characterStillImage
    }
    
    
    func characterAnimation(for character: Animation) -> [UIImage] {
        // RETURN AN ARRAY OF IMAGES FOR THE GIVEN CHARACTER HERE
        
        
        var characterImageArray: [UIImage] = []
        
        guard let index = characterImageStillCounts.index(forKey: character) else { return [] }

        let max = characterImageStillCounts.values[index]

        return characterImageArray
    }
}
