//
//  DetailViewController.swift
//  Detailed Project
//
//  Created by Ivan Caldwell on 11/14/18.
//  Copyright © 2018 Ivan Caldwell. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    var character: Model.Animation?
    
    @IBOutlet weak var detailViewImage: UIImageView!
    @IBOutlet weak var detailViewLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let character = character else { return }
        
        detailViewLabel.text = character.rawValue
        
    let cells = Model.shared.cells(for: character)
        detailViewImage.animationImages = cells
        detailViewImage.animationRepeatCount = 0
        detailViewImage.animationDuration = Double (cells.count) / 15.0 // FIGURE THIS PART OUT
        detailViewImage.startAnimating()
        
    }
}
