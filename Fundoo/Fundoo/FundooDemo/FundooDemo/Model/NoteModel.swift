//
//  NoteModel.swift
//  FundooDemo
//
//  Created by BridgeLabz on 10/08/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation
import UIKit
import Firebase

struct NoteModel {
    
    private(set) var noteId:String!
    private(set) var noteTitle:String?
    private(set) var noteDescription:String?
    
    init(title:String,desc:String)
    {
        
        self.noteTitle = title
        self.noteDescription = desc
    }
    
    func asDict() -> [String:String] {
        var notedictionary = [String:String]()
        
//        notedictionary["noteId"] = self.noteId
        notedictionary["noteTitle"] = self.noteTitle
        notedictionary["noteDescription"] = self.noteDescription
        
        return notedictionary
    }
    
    enum PropertyKey:String {
        case noteId = "NoteId"
        case noteTitle = "noteTitle"
        case noteDescription = "noteDescription"
    }
 
}
