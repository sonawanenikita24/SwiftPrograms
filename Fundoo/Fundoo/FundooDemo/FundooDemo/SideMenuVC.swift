//
//  SideMenuVC.swift
//  FundooDemo
//
//  Created by BridgeLabz on 09/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import UIKit

class SideMenuVC: UITableViewController {
    
    var arrNames = ["Notes" ,"LogOut"]
    
    @IBOutlet var LblName: UILabel!
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNames.count
    }
   
   // override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    //{
      //  print(indexPath.row)
    //}

   override  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:MenuViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MenuViewCell
        //cell.profileImageView.image = arrimage[indexPath.row]
        cell.notesLbl.text = arrNames[indexPath.row]
        return cell
    }
    
}
