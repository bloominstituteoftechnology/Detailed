//
//  Model.swift
//  Talking Animals
//
//  Created by Stuart on 11/27/18.
//  Copyright © 2018 Stuart. All rights reserved.
//

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
        let characterName: String = "\(character.rawValue)000"
        return UIImage(named: characterName) ?? UIImage()
    }
    
    func cells(for character: Animation) -> [UIImage] {
        var imageArray: [UIImage] = []
        
        guard let charIndex = cellCounts.index(forKey: character) else { return [] }
        let maxFrameInt = cellCounts.values[charIndex]
        
        for i in 1..<maxFrameInt {
            let animalName = character.rawValue
            let paddedInt = i.stringPadded(to: 3)
            let imageName = animalName + paddedInt
            let image = UIImage(named: imageName) ?? UIImage()
            imageArray.append(image)
        }
        
        return imageArray
    }
}
