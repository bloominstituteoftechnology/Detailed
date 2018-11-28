//
//  DetailViewController.swift
//  Talking Animals
//
//  Created by Stuart on 11/27/18.
//  Copyright © 2018 Stuart. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var character: Model.Animation
    
    @IBOutlet weak var nameOfImage: UILabel!
    
    @IBOutlet weak var talkingImage: UIImageView!

override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    guard let character = character else { return }

    let cells = Model.shared.cells(for: character)
    talkingImage.animationImages = cells
    talkingImage.animationRepeatCount = 0
    talkingImage.animationDuration = 2
    talkingImage.startAnimating()
    
    nameOfImage.text = character.rawValue
    
    }
}
