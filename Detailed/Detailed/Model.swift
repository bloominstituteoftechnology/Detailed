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
    
    var index : Int = 0
    
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
    
    
    func count() -> Int{
        return characters.count
    }
    func image(for character: String) -> UIImage {
        let imageName = "\(character)000"
        print(imageName)
        guard let image = UIImage(named: imageName) else {fatalError("Image did not load.(Model.image)")}
        return image
    }
    
    
    func cells(for character: Animation) -> [UIImage] {
        //coalImage is short for Coalesce Image. To get rid of the XCode error telling me I need to coalesce the image being stored into imageArray, I came up with a way to keep the animation fluid AND provide a default.
        let coalImage = UIImage(named: "\(character.rawValue)000")
        var imageArray : [UIImage] = []
        guard let count = cellCounts[character] else {fatalError("Error message of doom: Model.cells")}
        for num in (0...count) {
            let imageName = "\(character.rawValue)\(num.stringPadded(to: 3))"
            imageArray.append((UIImage(named: imageName) ?? coalImage!))
            
        }
        
        return imageArray
    }
    func getCharacter () -> Model.Animation{
        let character = Model.shared.characters[Model.shared.index]
        return character
    }
    
}
