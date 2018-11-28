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
       guard let image = UIImage(named: imageName) else { return UIImage()}
        return image
        
    }
    
    func cells(for character: Animation) -> [UIImage] {
        // RETURN AN ARRAY OF IMAGES FOR THE GIVEN CHARACTER HERE
        /*
 //Add the images to the array     func createImageArrays(numOfImages: Int, namePrefix: String) -> [UIImage]{         var animateImages: [UIImage] = []                  for nextImage in 0 ..< numOfImages {             var imageName = ""             if (nextImage < 10) {                 imageName = "\(namePrefix)00\(nextImage).png"             }             else {                 imageName = "\(namePrefix)0\(nextImage).png"             }             let crabImage = UIImage(named: imageName)!             animateImages.append(crabImage)         }
 */
        var imageArray: [UIImage] = []
        
        guard let index = cellCounts.index(forKey: character) else {return []}
        let max = cellCounts.values[index]
        
        
    }
}
