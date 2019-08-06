//
//  main.swift
//  PalindromeChecker
//
//  Created by BridgeLabz on 31/07/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation
import Swift

public struct Deque
{
    var DQue = [Character]()
    
    
    mutating func enqueue(element: Character)
    {
        DQue.append(element)
    }
    
    mutating func addFront(element: Character)
    {
        DQue.insert(element, at: 0)
    }
    mutating func addRear(element:Character)
    {
        DQue.insert(element, at: size())
    }
    
    mutating func dequeue() -> Character!
    {
        if DQue.isEmpty
        {
            return nil
        }
        else
        {
            return DQue.removeFirst()
        }
    }
    
    mutating func dequeueBack() -> Character?
    {
        if DQue.isEmpty
        {
            return nil
        }
        else
        {
            return DQue.removeLast()
        }
    }
    mutating func printQ()
    {
        for char in DQue
        {
            print(char)
        }
    }
    mutating func size()->Int
    {
        return DQue.count
    }
    mutating func isPallencheck(input:String)-> Bool
    {
        for char in input
        {
            enqueue(element: char)
        }
        let length=size()
        for _ in 1...length
        {
            addRear(element: dequeue()!)
            
        }
        var s=""
        for char in DQue
        {
            s=s+String(char)
        }
        if s == input
        {
            
            return true
        }
        else
        {
            return false
        }
    }
}

var dq = Deque()
print("Enter String:")
let s=readLine()!
if dq.isPallencheck(input:s)
{
    print("String \(s) is palindrome")
}
else
{
    print("String \(s) Not a palindrome")
}
