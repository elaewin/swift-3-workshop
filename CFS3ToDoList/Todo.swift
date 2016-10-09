//
//  Todo.swift
//  CFS3ToDoList
//
//  Created by Erica Winberry on 10/9/16.
//  Copyright © 2016 Adam Wallraff. All rights reserved.
//

import Foundation

class Todo {
    
    var text: String
    
    var identifier: String
    
    init(text:String) {
        self.text = text
        self.identifier = UUID().uuidString
    }
}
