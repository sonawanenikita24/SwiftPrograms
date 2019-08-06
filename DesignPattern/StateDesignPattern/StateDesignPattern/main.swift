//
//  main.swift
//  StateDesignPattern
//
//  Created by BridgeLabz on 05/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation

protocol playerState{
    
    func next(player:Player) -> Void
    
    func prev(player:Player) -> Void
    
    func  printStatus() -> Void
}

public class Player {
    private var state : playerState = restState()
    
    func setState(playerState : playerState) {
        self.state = playerState
    }
    //    var setState:restState{
    //        get{
    //            return
    //        }
    //        set(newvalue)
    //        {
    //
    //        }
    //    }
    
    func previous() -> Void {
        state.prev(player: self)
    }
    
    func nextState() -> Void {
        state.next(player: self)
    }
    
    func printstatus() -> Void {
        state.printStatus()
    }
}


public class restState:playerState{
    func next(player: Player) {
        player.setState(playerState: walkingstate())
    }
    
    func prev(player: Player) {
        print("Player is taking rest")
    }
    
    func printStatus() {
        print("player is ready to walk")
    }
}

public class walkingstate:playerState{
    func next(player: Player) {
        player.setState(playerState: runningstate())
    }
    
    func prev(player: Player) {
        player.setState(playerState: restState())
        
    }
    
    func printStatus() {
        print("player is walking")
    }
}

public class runningstate:playerState{
    func printStatus() {
        print("Player is running")
    }
    
    func next(player: Player) {
        print("In running status")
    }
    
    func prev(player: Player) {
        player.setState(playerState: walkingstate())
    }
    
    
}


var player1 = Player()

player1.printstatus()

player1.nextState()
player1.printstatus()

player1.nextState()
player1.printstatus()

player1.nextState()
player1.printstatus()


