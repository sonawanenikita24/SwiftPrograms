//
//  main.swift
//  Singleton
//
//  Created by BridgeLabz on 05/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation

class LocationManager{
    
    static let shared = LocationManager()
    
    var locationGranted: Bool?
    //Initializer access level change now
    private init(){}
    
    func requestForLocation(){
        //Code Process
        locationGranted = true
        print("Location granted")
    }
    
}
//Access class function in a single line
LocationManager.shared.requestForLocation()
