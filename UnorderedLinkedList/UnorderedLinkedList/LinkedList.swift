//
//  LinkedList.swift
//  UnorderedLinkedList
//
//  Created by BridgeLabz on 31/07/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation
open class LinkedList {
   var head: Node?
    //private var tail:Node?
    
    public var isEmpty:Bool
    {
        return head == nil
    }
    
    public var first:Node?
    {
        return head
    }
    
    public func append(value:String)
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
    
    // Insert at position
    public func InsertAtPosiotion(data:String, at position:Int)
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
   
    // to insert
    public func Insert(value:String)
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
    
    public func searchNode(item:String) -> Int {
   
        var current = head
        var count=0
        
        if head == nil
        {
            count = -1
            print("List is empty")
        }
        else
        {
            while current?.next != nil
            {
                if current?.value == item
                {
                    print("Data found in linked list")
                    print("At position is \(count)")
                    return count
                    
                }
                count += 1
                
                current = current?.next
            }
        }
        print("not found in list")
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
    
    func listItem()->String
    {
        return head!.value!
    }
    
    func count()->Int
    {
        var count=0
        while head != nil
        {
            count+=1
            head=head?.next
        }
        return count
    }
}
