//
//  TableViewCell.swift
//  11.27-Detailed
//
//  Created by Lambda_School_Loaner_18 on 11/27/18.
//  Copyright © 2018 Lambda_School_Loaner_18. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageViewX: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
