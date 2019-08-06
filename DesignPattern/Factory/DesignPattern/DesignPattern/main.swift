//
//  main.swift
//  DesignPattern
//
//  Created by BridgeLabz on 02/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation

enum CarType {
    case sedan, SUV, van
}

protocol Car {
    func drive()
}

class Van: Car {
    func drive() {
        print("drive a van")
    }
}

class Sedan: Car {
    func drive() {
        print("drive a sedan")
    }
}

class SUV: Car {
    func drive() {
        print("drive a SUV")
    }
}

class Factory {
    static func produceCar(type: CarType) -> Car {
        switch type {
        case .sedan:
            return Sedan()
        case .SUV:
            return SUV()
        case .van:
            return Van()
        }
    }
}
let sedan = Factory.produceCar(type: .sedan)
sedan.drive()
let suv = Factory.produceCar(type: .SUV)
suv.drive()
let van = Factory.produceCar(type: .van)
van.drive()

