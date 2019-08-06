//
//  main.swift
//  PrimeNumbers
//
//  Created by BridgeLabz on 01/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation

class Prime {
    
    func prime(number:Int) -> Int {
        var flag = 0
        for i in 2...number
        {
            if number % i == 0
            {
                flag = 1
            }
        }
        return flag
    }
    
    func primeNumberarray(primenumberArray:[[Int]]) -> [[Int]]
    {
        var array=primenumberArray
        for i in 2..<100
        {
            if prime(number: i)==0
            {
                var first = [Int]()
                        for _ in 2..<100
                        {
                            first.append(0)
                        }
                        array.append(first)
                
            }
        }
        return primenumberArray
    }
}

var pri=Prime()
var primearray = [[Int]]()
primearray[0].append(contentsOf: 0..<100)
primearray=pri.primeNumberarray(primenumberArray: primearray)
for i in 0..<10
{
    for j in 0..<25
    {
        print(primearray[i][j])
    }
}
