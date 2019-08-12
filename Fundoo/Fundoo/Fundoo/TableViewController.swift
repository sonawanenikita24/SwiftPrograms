//
//  TableViewController.swift
//  Fundoo
//
//  Created by BridgeLabz on 09/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var arrdata=["Notes","Logout"]
    
    var  imagedata=[#imageLiteral(resourceName: "notes"),#imageLiteral(resourceName: "menu")]
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
