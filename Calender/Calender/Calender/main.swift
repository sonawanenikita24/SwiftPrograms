//
//  main.swift
//  Calender
//
//  Created by BridgeLabz on 31/07/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation
import Swift
func year(year:Int)->Bool
{
    if year % 4 == 0
    {
        return true
    }
    else
    {
        return false
    }
}
func getDay(day:Int,month:Int,year:Int) -> Int
{
    var x:Int
    var d0:Int
    var m0:Int
    var y0:Int
    y0=year-(14-month) / 12
    x=y0 + y0/4 - y0/100 + y0/400
    m0=month + 12 * ((14 - month) / 12) - 2
    d0 = (day + x + (31 * m0) / 12) % 7
    return d0
}
var months:[String]=["","January","Febraury","March","April","May","June","July","August","September","October","November","December"]
var date:[Int]=[0,31,28,31,30,31,30,31,31,30,31,30,31]
var month=Int(readLine()!)!
var d = Int(readLine()!)!
var year = Int(readLine()!)!
if month==2 && year(year: year)
{
    date[month]=29
}
var day=getDay(day:d,month:month,year:year)
var row=6
var col=7
var x=1
var arr = Array(repeating: Array(repeating: " ", count: col), count: row)
for i in 0..<6
{
    for j in day..<7
    {
        if x <= date[month]
        {
            arr[i][j] = String(x)
            x=x+1
        }
    }
    day = 0
}
var s=""
print("Sun\tMon\tTue\tWed\tThu\tFri\tSat")


for i in 0..<5
{
    
    for j in day..<7
    {
        s+=String(arr[i][j])+"\t"
    }
    print(s)
    s=" "
    
}
