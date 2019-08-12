//
//  ViewController.swift
//  Demo1
//
//  Created by BridgeLabz on 08/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.img.image = imgdata[indexPath.row]
        cell.lbl.text = arrdata[indexPath.row]
        return cell
    }
    
    var arrdata=["Notes","Logout"]
     var isSideViewOpen: Bool = false
    var imgdata=[#imageLiteral(resourceName: "notes"),#imageLiteral(resourceName: "menu")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sideview.isHidden = true
//        sidebar.backgroundColor = UIColor.groupTableViewBackground
        isSideViewOpen = false
        
    }

    @IBOutlet var sidebar: UITableView!
    
    @IBOutlet var sideview: UIView!
    
    
    @IBAction func btnmenu(_ sender: UIButton) {
        
        sidebar.isHidden = false
        sideview.isHidden = false
        self.view.bringSubviewToFront(sideview)
        if !isSideViewOpen{
            isSideViewOpen = true//0
            sideview.frame = CGRect(x: 0, y: 88, width: 0, height: 499)
            sidebar.frame = CGRect(x: 0, y: 0, width: 0, height: 499)
            UIView.setAnimationDuration(0.3)
            UIView.setAnimationDelegate(self)
            UIView.beginAnimations("TableAnimation", context: nil)//1
            sideview.frame = CGRect(x: 0, y: 88, width: 259, height: 499)
            sidebar.frame = CGRect(x: 0, y: 0, width: 259, height: 499)
            UIView.commitAnimations()
            
        }else{
            sidebar.isHidden = true
            sideview.isHidden = true
            isSideViewOpen = false
            sideview.frame = CGRect(x: 0, y: 88, width: 259, height: 499)
            sidebar.frame = CGRect(x: 0, y: 0, width: 259, height: 499)
            UIView.setAnimationDuration(0.3)
            UIView.setAnimationDelegate(self)
            UIView.beginAnimations("TableAnimation", context: nil)
            sideview.frame = CGRect(x: 0, y: 88, width: 0, height: 499)
            sidebar.frame = CGRect(x: 0, y: 0, width: 0, height: 499)
            UIView.commitAnimations()    }
}
}
