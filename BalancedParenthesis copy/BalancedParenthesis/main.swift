//
//  main.swift
//  BalancedParenthesis
//
//  Created by BridgeLabz on 31/07/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation
import Swift

struct Stack<T>
{
    private var items: [String] = []
    func peek() -> String
    {
        if items.count == -1
        {
            fatalError("Stack is empty")
        }
        else
        {
            let topElement = items.first
            return topElement!
            
        }
        
    }
    
    mutating func pop() -> String
    {
        return items.removeFirst()
    }
    
    mutating func push(element: String)
    {
        items.insert(element, at: 0)
    }
    func isEmpty()-> Bool
    {
        if items.count == -1
        {
            return true
        }
        else
        {
            return false
        }
        
    }
}
func isBalanced(exp:String)-> Bool
{
    var stk = Stack<Any>()
    for char in exp
    {
        if char == "("
        {
            stk.push(element: String(char))
        }
        if char == ")"
        {
            if stk.isEmpty()
            {
                return false
            }
            else if isMatchingPair(char1:Character(stk.pop()),char2:char)
            {
                return true
            }
        }
    }
    if stk.isEmpty()
    {
        return true
    }
    else
    {
        return false
    }
}
func isMatchingPair(char1:Character,char2:Character)-> Bool
{
    if char1 == "(" && char2 == ")"
    {
        return true
    }
    else
    {
        return false
    }
}
var expression=readLine()!
if isBalanced(exp:expression)
{
    print("Expression is Balanced")
}
else
{
    print("Not Balanced")
}

