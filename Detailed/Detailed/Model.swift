//
//  DetailViewController.swift
//  Sprint 2 Review project - Detailed
//
//  Created by Sameera Leola on 12/4/18.
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
        // RETURN THE 000 IMAGE FOR THE GIVEN CHARACTER HERE
        let characterName = "\(character.rawValue)000"
        let characterImage = UIImage(named: characterName)!
        return characterImage
    }

    func cells(for character: Animation) -> [UIImage] {
        // RETURN AN ARRAY OF IMAGES FOR THE GIVEN CHARACTER HERE
        //Create the array that will hold the images to create the animation
        var imagesArray: [UIImage] = []
        
        //Get the number of images that animate the character
        guard let imageCount = cellCounts[character] else { return [] }
        
        //Populate the imagesArray with the character images
        for image in 0 ..< imageCount {
            //Get the name of the image
            let name = "\(character.rawValue)\(image.stringPadded(to: 3))"
            //Identify the next image to animate the character
            let nextImage = UIImage(named: name)!
            //Append the image to the array of images
            imagesArray.append(nextImage)
        }
        return imagesArray
    }
    
    func characterName(for character: Animation) -> String {
        let name: String = character.rawValue
        print(name)
        return name
    }
}
