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
    func image(for character: Animation) -> UIImage {
        let imageName = "\(character)000"
        guard let image = UIImage(named: imageName) else {fatalError("Image did not load.(Model.image)")}
        return image
    }
    
    func cells(for character: Animation) -> [UIImage] {
        
        let count = cellCounts[character]
        
    }
    func getCharacter () -> Model.Animation{
        let character = Model.shared.characters[Model.shared.index]
        return character
    }
    
}
