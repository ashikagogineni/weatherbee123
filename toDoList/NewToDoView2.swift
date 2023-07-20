//
//  NewToDoView2.swift
//  toDoList
//
//  Created by Ashika on 7/19/23.
//

import SwiftUI

struct NewToDoView2: View {
    @Environment(\.managedObjectContext) var context
    @Binding var showNewTask : Bool
    
    @State var item: String
    @State var store: String
    @State var price: String
    @State var isImportant2: Bool
    var body: some View {
        VStack {
            Text("New item:")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter item name...", text: $item)
                .font(.system(size: 15))
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                  .padding()
            TextField("Enter store...", text: $store)
                .font(.system(size: 15))
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                  .padding()
            TextField("Enter price...", text: $price)
                .font(.system(size: 15))
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                  .padding()
            Toggle(isOn: $isImportant2) {
                            Text("Is this item important?")
            }
            .padding()
            Button(action: {
                self.addTask(item: self.item, store: self.store, price: self.price, isImportant2: self.isImportant2)
                self.showNewTask = false
            }) {
                Text("Add")
            }
            .padding()
        }
    }
    private func addTask(item: String, store: String, price: String, isImportant2: Bool = false) {
        let task = ToDo(context: context)
        task.id = UUID()
        task.item = item
        task.store = store
        task.price = price
        task.isImportant2 = isImportant2
                
        do {
            try context.save()
        } catch {
            print(error)
        }
        }
}

struct NewToDoView2_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView2(showNewTask: .constant(true), item: "", store: "", price: "", isImportant2: false)
    }
}
