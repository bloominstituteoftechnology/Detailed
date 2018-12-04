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
    
    var character: Model.Animation?
    
    let cells = Model.shared.cells(for: character)
    imageView.animationImages = cells
    imageView.animationRepeatCount = 0
    imageView.animationDuration = // FIGURE THIS PART OUT
    imageView.startAnimating()
    
}
