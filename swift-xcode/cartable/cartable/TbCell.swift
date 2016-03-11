//
//  TbCell.swift
//  cartable
//
//  Created by Muqtadir Ahmed on 09/03/16.
//  Copyright © 2016 bitjini. All rights reserved.
//

import UIKit

class TbCell: UITableViewCell {
    
    
    @IBOutlet weak var lblCarName: UILabel!
    

    @IBOutlet weak var imgCarName: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
