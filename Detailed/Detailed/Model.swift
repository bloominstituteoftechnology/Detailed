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
        guard let image = UIImage(named: imageName) else {fatalError("fatal error here")}
        return image
    }
    
    func cells(for character: Animation) -> [UIImage] {
        // RETURN AN ARRAY OF IMAGES FOR THE GIVEN CHARACTER HERE
        var tempImgArray: [UIImage] = []

        guard let pictureNumber = cellCounts[character] else {fatalError("bad reference to cellCounts key")}
        
        for count in 0..<pictureNumber {
            
            if(count < 10){
                guard let tempImage = UIImage.init(named:"\(character.rawValue)00\(count)") else {fatalError()}
                tempImgArray.append(tempImage)
            } else {
                guard let tempImage = UIImage.init(named:"\(character.rawValue)0\(count)") else {fatalError()}
                tempImgArray.append(tempImage)
            }
        }
        
        return tempImgArray
    }
}
