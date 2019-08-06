//
//  UnorderedLinkedList.swift
//  Datastructure
//
//  Created by BridgeLabz on 30/07/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation

public class Node
{
    var value: String
    var next: Node?
    
    init(value: String)
    {
        self.value=value
    }
}

class UnorderedList
{
    var head:Node? // head is nil and list is empty
    
    // check for list is empty or not
    public var isEmpty:Bool
    {
        return head==nil
    }
    
    // check for the first element in the list
    public var first:Node?
    {
        return head
    }
    
    func searchNode(item:String)->(i:Int,flag:Bool)
    {
        var current=head
        var i=1
        var flag=false
        if(head==nil)
        {
            print("List is Empty")
        }
        else{
            while current != nil
            {
                if current?.value == item
                {
                    flag=true
                    break
                }
                i+=1
                current=current?.next
            }
            
        }
        return (i,flag)
    }
    
    
    // insert at last of the list
    public func append(value:String)
    {
        let newNode = Node(value: value)
        if var h = head{
            while h.next != nil{
                h = h.next!
            }
            h.next=newNode
        }
        else{
            head=newNode
        }
    }
    
    // insert at position
    public func InsertAtPosition(data:String, at position:Int)
    {
        let newnode = Node(value: data)
        if(position == 0)
        {
            newnode.next = head
            head = newnode
        }
        else{
            var previous = head
            var current = head
            for _ in 0..<position{
                previous = current
                current = current?.next
            }
            newnode.next = previous?.next
            previous?.next = newnode
        }
    }
    
    // insert elements
    func insert(value:String)
    {
        let newnode = Node(value:value)
         if (head == nil || (head?.value)! > (newnode.value)!)
        {
            newnode.next = head
            head = newnode
        }
         else
         {
            var current = head
            while (current!.next != nil && current!.value! < (newnode.value)!)
            {
                current = current!.next
                newnode.next = current!.next
                current!.next = newnode
            }
        }
    }
    
    
    //delete node from list
    public func deleteNode(at position: Int){
        
        if head == nil{
            return
        }
        
        var temp = head
        
        if(position == 0)
        {
            head=temp?.next; //change head
            return
        }
        
        for _ in 0..<position-1 where temp != nil{
            temp=temp?.next;
        }
        
        if temp == nil || temp?.next == nil{
            return
        }
        
        let nextToNextNode=temp?.next?.next
        temp?.next=nextToNextNode
    }
    
    // print the list
    func printList()
    {
        var current: Node? = head
        while (current != nil)
        {
            print("\((current?.value)!)")
            current = current?.next
        }
    }
}

let list = UnorderedList()
var s:[String]=[]
let count1=String(readLine()!)
for _ in 0..<count
{
    s.append(String(readLine()!))
}
for i in 0..<s.count
{
    list.insert(value: s[i] )
}
list.printList()
print("Enter string to Search:")
var s3=String(readLine()!)
var t=list.searchNode(item: s3)
if (t.flag == true)
{
    list.deleteNode(at: t.i-1)
    list.printList()
}
else
{
    list.insert(value: s3)
    list.printList()
}

