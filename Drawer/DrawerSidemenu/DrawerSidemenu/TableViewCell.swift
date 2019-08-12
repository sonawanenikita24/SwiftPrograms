//
//  TableViewCell.swift
//  DrawerSidemenu
//
//  Created by BridgeLabz on 08/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet  var profileImageView: UIImageView!
    
    @IBOutlet var LabelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
