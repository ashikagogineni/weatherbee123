//
//  Shopping.swift
//  toDoList
//
//  Created by Ashika on 7/19/23.
//

import SwiftUI

struct Shopping: View {
    @Environment(\.managedObjectContext) var context
    @State private var showNewTask = false
    @FetchRequest(
        entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
    
    var toDoItems: FetchedResults<ToDo>
    
    var body: some View {
        VStack {
            HStack {
                Text("Shopping List")
                    .font(.system(size: 30))
                    .fontWeight(.black)
                
                Spacer()
                Button(action: {
                    self.showNewTask = true
                    
                }) {
                    Text("Click to add a new item")
                }
            }
            .padding()
            Spacer()
            List {
                ForEach (toDoItems) { toDoItem in
                    if toDoItem.isImportant == true {
                        let profileString = (toDoItem.item ?? "No item") + " \nStore: " + (toDoItem.store ?? "Unknown")
                        Text(profileString + " \nStyle: " + (toDoItem.price ?? "Unknown"))
                    } else {
                        let profileString2 = "‼️‼️\n" + (toDoItem.item ?? "No item") + " \nStore: " + (toDoItem.store ?? "Unknown")
                        Text(profileString2 + " \n$" + (toDoItem.price ?? "Unknown"))
                    }
                }
                .onDelete(perform: deleteTask)
            }
            .listStyle(.plain)
        }
        if showNewTask {
            NewToDoView2(showNewTask: $showNewTask, item: "", store: "", price: "", isImportant2: false)
                    }
        }
    private func deleteTask(offsets: IndexSet) {
            withAnimation {
                offsets.map { toDoItems[$0] }.forEach(context.delete)

                do {
                    try context.save()
                } catch {
                    print(error)
                }
            }
        }
    }
    
struct Shopping_Previews: PreviewProvider {
    static var previews: some View {
        Shopping()
    }
}
