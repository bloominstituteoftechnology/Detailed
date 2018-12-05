//
//  DetailViewController.swift
//  Sprint 2 Review project - Detailed
//
//  Created by Sameera Leola on 12/4/18.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var detailImage: UIImageView!
    
    //Create a variable to hold the values passed from the segue
    var theCharacter: Model.Animation?
    
    override func viewWillAppear (_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Set the character name
        detailLabel.text = Model.shared.characterName(for: theCharacter!)
        
        //Create the animation
        let cells = Model.shared.cells(for: theCharacter!)
        //Get the array of images that will be animated
        detailImage.animationImages = cells
        //Specify the animation show continue to loop
        detailImage.animationRepeatCount = 0
        //Set the speed of the animation
        detailImage.animationDuration = Double(cells.count / 15)
        //Start the animation
        
    }
    
    
    
}
