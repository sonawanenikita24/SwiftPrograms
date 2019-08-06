//
//  main.swift
//  Datastructure
//
//  Created by BridgeLabz on 30/07/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation

public class SNode<T>{
    var value:T
    var next:SNode<T>?
    
    init(value: T)
    {
        self.value=value
    }
}

class singlyLinkedList<T>
{
    var head:SNode<T>? // head is nil  when list is empty
    
    public var isEmpty:Bool{
        return head==nil
    }
    
    public var first:SNode<T>?
    {
        return head
    }
    
    public func append(value:T){
        let newNode = SNode(value: value)
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
    
    public func insert(data:T, at position:Int){
        let newnode=SNode(value: data)
        if(position==0){
            newnode.next=head
            head=newnode
        }
        else{
            var previous=head
            var current=head
            for _ in 0..<position{
                previous=current
                current=current?.next
            }
            newnode.next=previous?.next
            previous?.next=newnode
        }
    }
    
    public func deleteNode(at position: Int){
        if head==nil{
            return
        }
        var temp=head
        if(position==0)
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
    
     func printList(){
        var current: SNode?=head
        // assign the next instance
        while(  current != nil){
            print("Linked list item is : \(current?.value as? Int ?? 0)")
            current=current?.next
        }
    }
}

let ll = singlyLinkedList<Int>()
ll.append(value: 1)
ll.append(value: 2)
ll.first
ll.insert(data: 5, at: 1)
ll.insert(data: 6, at: 3)
ll.printList()

