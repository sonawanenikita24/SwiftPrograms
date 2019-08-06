//
//  main.swift
//  Observer
//
//  Created by BridgeLabz on 05/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation

let subject = Subject()

let binary = BinaryObserver(subject: subject, id: 1)
let octal = OctalObserver(subject: subject, id: 2)
let hex = HexaObserver(subject: subject, id: 3)

subject.number = 15
subject.number = 2

