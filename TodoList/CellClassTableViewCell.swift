//
//  CellClassTableViewCell.swift
//  TodoList
//
//  Created by Mac on 3/11/16.
//  Copyright © 2016 Mac. All rights reserved.
//

import UIKit

class CellClassTableViewCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
