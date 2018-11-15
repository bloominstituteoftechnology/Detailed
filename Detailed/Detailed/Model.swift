import UIKit
// Looks like we'll be using UIKit and not Foundation this time...

extension Int {
// add more capabilities to Int
    fileprivate func stringPadded(to count: Int) -> String {
    // function is *private* to everything in this *file*
    // returning an entered Int as a String
        var string = String(self)
        // I guess self is being made a string?
        while string.count < count
        // seems like string.count is 0, and count is whatever Int is passed into the function.
            { string = "0" + string }
            // if string is "0\(string)", which isn't very helpful. Is the string currently nil?
        return string
    }
}

class Model {
    static let shared = Model()
    // lets you use Model elsewhere as Model.shared.whatever
    private init() {}
    // private init that does something
    
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
        let talkingCharacterImage000 = "\(characters)000"
        let talkingCharacterUIImage = UIImage(named: talkingCharacterImage000)
        return talkingCharacterUIImage
//        var imageNameArray: [UIImage] = []
//        for characters in characters {
//        let talkingCharacterImage000 = "\(characters)000"
//        if let talkingCharacterUIImage = UIImage(named: talkingCharacterImage000) {
//            imageNameArray.append(talkingCharacterUIImage)
//            }
//        }
    }
    func cells(for character: Animation) -> [UIImage] {
        // RETURN AN ARRAY OF IMAGES FOR THE GIVEN CHARACTER HERE
        for start in cellCounts.values {
            
            start++
        }
    }

//    var nameArray: [UIImage] = []
//    for counter in 1 ... 12 {
//        let imageName = "\(Animation.String)\(counter)"
//        if let image = UIImage(named: imageName) {
//        nameArray.append(image)
//        }
//    }
    
}

