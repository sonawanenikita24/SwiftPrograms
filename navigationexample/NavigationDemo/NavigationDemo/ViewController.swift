//
//  ViewController.swift
//  NavigationDemo
//
//  Created by BridgeLabz on 07/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func homeBtnClicked(_ sender: UIButton) {
        let VC = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        self.navigationController?.pushViewController(VC, animated: true)
        
    }
    
}

