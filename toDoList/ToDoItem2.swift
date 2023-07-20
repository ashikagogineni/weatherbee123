//
//  ToDoItem2.swift
//  toDoList
//
//  Created by Ashika on 7/19/23.
//

import Foundation

class ToDoItem2: Identifiable {
    var id = UUID()
    var item: String
    var store: String
    var price: String
    var isImportant2 : Bool
    
    init(item: String, store: String, price: String, isImportant2: Bool = false) {
            self.item = item
            self.store = store
            self.price = price
            self.isImportant2 = isImportant2
        }
}
