//
//  DetailViewController.swift
//  NavigationDemo
//
//  Created by BridgeLabz on 07/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func homebtnclicked(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

    @IBAction func nextbtnclicked(_ sender: UIButton) {
        let Detail = self.storyboard?.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        self.navigationController?.pushViewController(Detail, animated: true)
        
        
    }
}
