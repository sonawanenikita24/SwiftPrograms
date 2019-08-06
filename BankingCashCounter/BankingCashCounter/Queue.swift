//
//  Queue.swift
//  BankingCashCounter
//
//  Created by BridgeLabz on 01/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation

struct Queue {
    
    var item:[String] = []
    mutating func enqueue(element:String)
    {
        item.append(element)
    }
    
    mutating func dequeue()->String?
    {
        if item.isEmpty {
            print("Queue is empty")
            return nil
        }
        else{
            let temp = item.first
            item.remove(at: 0)
            return temp
        }
    }
    
    mutating func addmembers()
    {
        //add people in que
        var q1 = Queue()
        var cash = 100000
        // print("press 1 to withdraw")
        //print("press 2 to deposit")
        // let banking = Int(readLine()!)!
        
        print("enter number of pesons")
        let people = Int(readLine()!)!
        for _ in 0...people
        {
            print("enter person name:")
            q1.enqueue(element: readLine()!)
        }
    
        print("The total number of people in Queue is \(people + 1)")
        
        print("the queue is")
        print(q1)
        
        print("welcome to the cash counter")
        for _ in 0...people
        {
            print("Press 1: for withdraw")
            print("Press 2: for deposit")
            let banking = Int(readLine()!)!
            
            switch banking
            {
            case 1:
                //print("\() in queue")
                print("enter the amount that you want to withdraw")
                let withdraw = Int(readLine()!)!
                //validation
                if withdraw > 0 && withdraw <= cash
                {
                    cash = cash - withdraw
                    
                    print("update  amount is \(cash)")
                    
                    print("thank you please visit again")
                    
                    if cash == 0
                    {
                        print("no cash in your account")
                        return
                    }
                    
                    q1.dequeue()
                    
                    // print("update  amount is \(cash)")
                }
                else {
                    print("please enter the valid amount")
                    return
                }
                break
            case 2:
                //print("enter the amount that you have to deposite")
                print("enter amount to deposit")
                let deposit = Int(readLine()!)!
                if deposit > 0
                {
                    cash = cash + deposit
                    print("update cash \(cash)")
                    q1.dequeue()
                }
                else
                {
                    print("please enter the valid amount")
                    return
                }
                break
                
            default:
                print("invalid")
            }
            
           // print("thankyou\(dequeue()!)")
            if people > 0{
                print("current queue is \(q1)")
                
            }
            else{
                print("current queue is empty")
            }
        }
        
    }
    
}

