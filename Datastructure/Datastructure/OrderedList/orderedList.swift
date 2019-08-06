//
//  orderedList.swift
//  Datastructure
//
//  Created by BridgeLabz on 30/07/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation
public class xNode
{
    var value: Int?
    var next: xNode?
    
    init(value:Int)
    {
        self.value = value
    }
}
class OrderdList
{
    var head:xNode?
    var isEmpty:Bool
    {
        return head==nil
    }
    func searchNode(item:Int)-> (i:Int,flag:Bool)
    {
        var current = head
        var i  = 1
        var flag=false
        if head == nil
        {
            print("List is empty")
        }
        else
        {
            while current != nil
            {
                if current?.value == item
                {
                    flag = true
                    break
                }
                i+=1
                current = current?.next
            }
        }
        return (i,flag)
        
    }
    
    func deleteNode(at position: Int)
    {
        if head == nil
        {
            return
        }
        var temp = head
        
        if (position == 0)
        {
            head = temp?.next
            return
        }
        
        for _ in 0..<position-1 where temp != nil
        {
            temp = temp?.next
        }
        
        if temp == nil || temp?.next == nil
        {
            return
        }
        
        let nextToNextNode = temp?.next?.next
        
        temp?.next = nextToNextNode
    }
    func printList()
    {
        var current: xNode? = head
        while (current != nil)
        {
            print("\((current?.value)!)")
            current = current?.next
        }
    }
    func insert(value:Int)
    {
        let newNode = xNode(value: value)
        if (head == nil || (head?.value)! > (newNode.value)!)
        {
            newNode.next = head
            head = newNode
        }
        else
        {
            var current = head
            while (current!.next != nil && current!.value! < (newNode.value)!)
            {
                current = current!.next
                newNode.next = current!.next
                current!.next = newNode
            }
        }
    }
}


let list1 = OrderdList()
var s1:[Int] = []
let count = Int(readLine()!)!
for _ in 0..<count
{
    s1.append(Int(readLine()!)!)
}
for i in 0..<s.count
{
    list1.insert(value: s1[i] )
}
list1.printList()
print("Enter Num to Search:")
var s2=Int(readLine()!)!
var t1=list1.searchNode(item: s2)
if (t1.flag == true)
{
    list1.deleteNode(at: t.i-1)
    list1.printList()
}
else
{
    list1.insert(value: s2)
    list1.printList()
}
