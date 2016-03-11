//
//  TbCell.swift
//  vzcards
//
//  Created by Muqtadir Ahmed on 09/03/16.
//  Copyright © 2016 bitjini. All rights reserved.
//

import UIKit

class TbCell: UITableViewCell {
    
    
    @IBOutlet weak var img1: UIImageView!
    
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblop: UILabel!
    

    @IBOutlet weak var lblobj: UILabel!
    
    @IBOutlet weak var img2: UIImageView!
    
    @IBOutlet weak var c1: UIView!
    @IBOutlet weak var lblChk: UILabel!
    
    
    
    @IBOutlet weak var btn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
