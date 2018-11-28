import UIKit

extension Int {
    // Get a string version of an Int that is padded to the count given
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
        
        // Assign the instance of Animation (character)'s raw value to imageName
        let imageName = "\(character.rawValue)000"
        
        // Assign the UIImage of the imageName to 'image' if it exists, if not, return
        guard let image = UIImage(named: imageName) else { return UIImage() }
        
        // Return the 00 Image for the given character
        return image
    }
    
    func cells(for character: Animation) -> [UIImage] {
        // Return an array of images for the given character here
        
        // Create an empty array
        var imageArray: [UIImage] = []
        
        // Get the values according to the character key
        guard let index = cellCounts.index(forKey: character) else { return [] }
        let max = cellCounts.values[index]
        
        // FIXME: Append UIImages 0 + index to the array
        for eachImage in 0 ..< max {
            let imageName = "\(character.rawValue)000"
            if let image = UIImage(named: imageName) {
                imageArray.append(image)
            }
            
        }
        
       
    }
    
}
