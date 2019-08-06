//
//  Observer.swift
//  Observer
//
//  Created by BridgeLabz on 05/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation

protocol Observer{
    var id : Int{ get }
    func update()
}
