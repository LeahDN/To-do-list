//
//  ContentView.swift
//  To-do list
//
//  Created by Scholar on 6/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false
    
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button(action: {
                    self.showNewTask = true
                    
                }) {
                    Text("+")
                        .font(.system(size:40))
                }
                
            }
            .padding()
            Spacer()
            List {
                ForEach (toDoItems) { toDoItem in
                    if toDoItem.isImportant == true {
                        Text("‼️" + toDoItem.title)
                    } else {
                        Text(toDoItem.title)
                    }
                }
            }
            
        }
            if showNewTask {
                NewToDoView(toDoItems: $toDoItems,showNewTask: $showNewTask, title: "", isImportant: false)
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
