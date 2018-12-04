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
    
//    func image(for character: Animation) -> UIImage {
//        // RETURN THE 000 IMAGE FOR THE GIVEN CHARACTER HERE
//        return nil
//    }
//
//    func cells(for character: Animation) -> [UIImage] {
//        // RETURN AN ARRAY OF IMAGES FOR THE GIVEN CHARACTER HERE
//        return []
//    }
}
