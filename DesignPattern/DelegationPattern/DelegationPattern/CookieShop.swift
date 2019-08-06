//
//  CookieShop.swift
//  DelegationPattern
//
//  Created by BridgeLabz on 05/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation

class CookieShop : BakeryDelegate
{
    func cookiewasBaked(_ cookie: Cookie) {
         print("Yay! A new cookie was baked, with size \(cookie.size)")
        
    }
    
   
}
