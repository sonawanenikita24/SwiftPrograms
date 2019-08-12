//
//  NextViewController.swift
//  NavigationDemo
//
//  Created by BridgeLabz on 07/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  
    @IBAction func previousbtnclicked(_ sender: UIButton) {
     self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func homebtnclicked(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
