//
//  DetailViewController.swift
//  Detailed
//
//  Created by Stuart on 12/4/18.
//  Copyright © 2018 Stuart. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
   
    @IBOutlet weak var characterView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var character : Model.Animation?
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        guard let character = character else {return}
        
        let cells = Model.shared.cells(for: character)
        nameLabel.text = character.rawValue
        
        
        characterView.animationImages = cells
        characterView.animationRepeatCount = 0
        characterView.animationDuration = TimeInterval(0.0/2)
        characterView.startAnimating()
    }
}
