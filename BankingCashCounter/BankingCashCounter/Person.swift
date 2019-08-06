//
//  Person.swift
//  BankingCashCounter
//
//  Created by BridgeLabz on 01/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation
import Swift

public class Person {
    var name:String
    var balance:Double
    
    init?(value:String, balance:Double)
    {
        if balance < 0
        {
            print("please provide positive value for balance")
            return nil
        }
    
        self.name = value
        self.balance=balance
        
    }
    
     func Deposit(depositAmount:Double) -> Bool {
        if depositAmount <= 0
        {
            print("Please provide positive value for amount to be deposit")
            Double(readLine()!)!
            return false
        }
        self.balance = balance + depositAmount
        print("your total balance = \(self.balance))")
        return true
    }
    
    func withdraw(withdrawAmt:Double) -> Bool {
        if (withdrawAmt > self.balance)
        {
            print("you dont have enough memory in your account")
            return false
        }
        self.balance = balance + withdrawAmt
        print("Remaining balance \(self.balance))")
        return true
    }
}

