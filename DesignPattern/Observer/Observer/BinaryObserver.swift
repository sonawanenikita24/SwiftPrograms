//
//  BinaryObserver.swift
//  Observer
//
//  Created by BridgeLabz on 05/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation

class BinaryObserver : Observer{
    
    private var subject = Subject()
    var id = Int()
    
    init(subject : Subject, id : Int) {
        self.subject = subject
        self.subject.attachObserver(observer: self)
        self.id = id
    }
    
    func update(){
        print("Binary: \(String(subject.number, radix: 2))")
    }
    
}
