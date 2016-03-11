//
//  CustumCell.swift
//  Custumex
//
//  Created by Muqtadir Ahmed on 04/03/16.
//  Copyright © 2016 bitjini. All rights reserved.
//

import UIKit

class CustumCell: UITableViewCell {

    @IBOutlet weak var index: UILabel!
  
    @IBOutlet weak var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
