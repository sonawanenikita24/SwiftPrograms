//
//  Bakery.swift
//  DelegationPattern
//
//  Created by BridgeLabz on 05/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation

class Bakery
{
    var delegate:BakeryDelegate?
    
    func makeCookie()
    {
        var cookie = Cookie()
        cookie.size = 6
        cookie.hasChocalteChips = true
        
        delegate?.cookiewasBaked(cookie)
    }
}
