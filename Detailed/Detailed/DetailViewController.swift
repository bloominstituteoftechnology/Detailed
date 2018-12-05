//
//  DetailViewController.swift
//  Detailed
//
//  Created by Vijay Das on 12/4/18.
//  Copyright © 2018 Vijay Das. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageDetailView: UIImageView!
    
    var character: Model.Animation?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let character = character else { return }
        nameLabel.text = character.rawValue
        
        let cells = Model.shared.cells(for: character)
        imageDetailView.animationImages = cells
        imageDetailView.animationRepeatCount = 0
        imageDetailView.animationDuration = Double(cells.count / 15)
        imageDetailView.startAnimating()
    
    }
    
    
    
    
}
