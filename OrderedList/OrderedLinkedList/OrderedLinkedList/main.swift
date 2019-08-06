//
//  main.swift
//  OrderedLinkedList
//
//  Created by BridgeLabz on 31/07/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation
import Swift

public class Node
{
    var value: Int?
    var next: Node?
    
    init(value:Int)
    {
        self.value = value
    }
}
class OrderdList
{
    var head:Node?
    var isEmpty:Bool
    {
        return head==nil
    }
    
    func searchNode(item:Int) -> Int {
        var current = head
        var count=0
        
        if head == nil
        {
            count = -1
            print("List is empty")
        }
        else
        {
            while current != nil
            {
                if current?.value == item
                {
                    print("Data found in linked list")
                    print("the count is \(count)")
                    return count
                    
                }
                count += 1
                
                current = current?.next
            }
        }
        print("not found in list")
        print("Total Node count is: \(count)")
        return count
        
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
        var current: Node? = head
        while (current != nil)
        {
            print("\((current?.value)!)")
            current = current?.next
        }
    }
    
    func insert(value:Int)
    {
        let newnode=Node(value: value)
        if var currentNode = head
        {
            while currentNode.next != nil
            {
                currentNode=currentNode.next!
            }
            currentNode.next=newnode
        }
        else
        {
            head = newnode
        }
    }
    
    // Insert at position
    func InsertAtPosiotion(data:Int, at position:Int)
    {
        let newnode=Node(value:data)
        if(position == 0)
        {
            newnode.next = head
            head = newnode
        }
        else{
            var previous = head
            var current = head
            for _ in 0..<position{
                previous=current
                current=current?.next
            }
            newnode.next=previous?.next
            previous?.next=newnode
        }
    }
    
    public func append(value:Int)
    {
        //create newnode at start of linked list
        let newnode=Node(value: value)
        if var h=head{
            while h.next != nil{
                h=h.next!
            }
            h.next=newnode
        }
        else{
            head = newnode
        }
    }
    
}

let list = OrderdList()
var s:[Int]=[]
print("Enter number : ")
let count = Int(readLine()!)!
for _ in 0..<count
{
    s.append(Int(readLine()!)!)
}
for i in 0..<s.count
{
    list.insert(value: s[i])
}
var count1 = s.count
list.printList()
print("Enter Num to Search:")
var s1 = Int(readLine()!)!
var searchedNode = list.searchNode(item: s1)
print("The node found at position \(searchedNode)")
if (searchedNode < count1) {
    list.deleteNode(at: searchedNode)
    list.printList()
} else {
    //list.InsertAtPosiotion(data: s1, at: searchedNode)
    list.append(value: s1)
    list.printList()
}
//list.printList()

