//
//  main.swift
//  DelegationPattern
//
//  Created by BridgeLabz on 05/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation

let shop = CookieShop()
let bakery = Bakery()
bakery.delegate = shop

bakery.makeCookie()

