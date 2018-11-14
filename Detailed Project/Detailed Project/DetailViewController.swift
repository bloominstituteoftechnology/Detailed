//
//  DetailViewController.swift
//  Detailed Project
//
//  Created by Ivan Caldwell on 11/14/18.
//  Copyright © 2018 Ivan Caldwell. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UITableViewController {
    var character: 
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    let cells = Model.shared.cells(for: character)
    imageView.animationImages = cells
    imageView.animationRepeatCount = 0
    imageView.animationDuration = Double (cells.count / 15)   // FIGURE THIS PART OUT
    imageView.startAnimating()
    
}
