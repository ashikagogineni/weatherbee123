//
//  ToDoItem.swift
//  toDoList
//
//  Created by scholar on 7/18/23.
//

import Foundation

class ToDoItem: Identifiable {
    var id = UUID()
    var title: String
    var age: String
    var style: String
    var isImportant : Bool
    
    init(title: String, age: String, style: String, isImportant: Bool = false) {
            self.title = title
            self.age = age
            self.style = style
            self.isImportant = isImportant
        }
}
