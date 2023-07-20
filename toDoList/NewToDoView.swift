//
//  NewToDoView.swift
//  toDoList
//
//  Created by scholar on 7/18/23.
//

import SwiftUI

struct NewToDoView: View {
    @Environment(\.managedObjectContext) var context
    @Binding var showNewTask : Bool
    
    @State var title: String
    @State var age: String
    @State var style: String
    @State var isImportant: Bool
    var body: some View {
        VStack {
            Text("New Profile:")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter name...", text: $title)
                .font(.system(size: 15))
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                  .padding()
            TextField("Enter age...", text: $age)
                .font(.system(size: 15))
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                  .padding()
            TextField("Enter style (casual, formal, activewear, etc.)...", text: $style)
                .font(.system(size: 15))
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                  .padding()
            Toggle(isOn: $isImportant) {
                            Text("Save Profile?")
            }
            .padding()
            Button(action: {
                self.addTask(title: self.title, age: self.age, style: self.style, isImportant: self.isImportant)
                self.showNewTask = false
            }) {
                Text("Add")
            }
            .padding()
        }
        .background(Color("NewTan"))
            
    }
    
    private func addTask(title: String, age: String, style: String, isImportant: Bool = false) {
        let task = ToDo(context: context)
        task.id = UUID()
        task.title = title
        task.age = age
        task.style = style
        task.isImportant = isImportant
                
        do {
            try context.save()
        } catch {
            print(error)
        }
    }
        
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(showNewTask: .constant(true), title: "", age: "", style: "", isImportant: false)
    }
}
