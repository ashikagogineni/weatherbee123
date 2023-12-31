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
        
        
        
        ZStack{
            Color("NewTan")
                .ignoresSafeArea()
            
            
            
            VStack {
                HStack {
                    Image("shoppingImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Spacer()
                    Button(action: {
                        self.showNewTask = true
                        
                    }) {
                        Text("Add new item")
                            .foregroundColor(Color("DarkBlue"))
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
                HStack{
                       NavigationLink(destination:ContentView()) {
                         Image("home")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(height : 70)
                       }
                       NavigationLink(destination:Profile()){
                         Image("profile")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(height : 70)
                       }
                       NavigationLink(destination:Shopping()) {
                         Image("shop")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(height : 70)
                       }
                       NavigationLink(destination:FashionReport()) {
                         Image("fashion")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(height : 70)
                       }
                        NavigationLink(destination:About()) {
                        Image("about")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height : 70)
                    }
                     }//Hstack
            }
            
            
            
            
            if showNewTask {
                NewToDoView2(showNewTask: $showNewTask, item: "", store: "", price: "", isImportant2: false)
            }
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

