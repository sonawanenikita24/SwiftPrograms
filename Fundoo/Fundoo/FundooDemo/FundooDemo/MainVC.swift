//
//  MainVCViewController.swift
//  FundooDemo
//
//  Created by BridgeLabz on 09/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBAction func BtnClk(_ sender : UIBarButtonItem) {
        
       // print("Side Menu")
        
        NotificationCenter.default.post(name: NSNotification.Name("Togglesidemenu"), object: nil)
        
    }
    
   
}
