//
//  main.swift
//  BinarySearchTree
//
//  Created by BridgeLabz on 31/07/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation
import Swift
func factorial(n:Int)->Int
{
    var res = 1
    for i in 1...n
    {
        res *= i
    }
    
    return res
}
func binomialCoeff(n:Int,k:inout Int)-> Int
{
    var res = 1
    if (k > n - k)
    {
        k = n - k
    }
    
    for i in 0..<k
    {
        res *= (n - i)
        res /= (i + 1)
    }
    
    return res
}
func catalan(n:inout Int)->Int
{
    let  c = binomialCoeff(n:2 * n,k:&n)
    return c / (n + 1)
}
func countBST(n:inout Int)->Int
{
    let count = catalan(n:&n)
    return count
}
func countBT(n:inout Int)->Int
{
    let count = catalan(n:&n)
    return count * factorial(n:n)
}
var  n = Int(readLine()!)!
var bst:Int
var bt:Int
bst = countBST(n:&n)
bt = countBT(n:&n)
print("Num of BST are: \(bst)")
print("Num of BT are: \(bt)")

