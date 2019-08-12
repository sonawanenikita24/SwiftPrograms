//
//  ViewController.swift
//  DrawerSidemenu
//
//  Created by BridgeLabz on 07/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrdata.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.profileImageView.image = arrimage[indexPath.row]
        cell.LabelName.text = arrdata[indexPath.row]
        return cell
    }
    
    var arrdata = ["nOtes","lOGOUT"]
    
    var arrimage = [#imageLiteral(resourceName: "notes"),#imageLiteral(resourceName: "menu")]
    override func viewDidLoad() {
        super.viewDidLoad()
        sideview.isHidden = true
        sidebar.backgroundColor = UIColor.groupTableViewBackground
        isSideViewOpen = false
    }


    @IBOutlet var sidebar: UITableView!
    
    @IBOutlet var sideview: UIView!
}

