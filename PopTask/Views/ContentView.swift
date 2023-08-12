//
//  ContentView.swift
//  PopTask
//
//  Created by Nicolas Liu on 8/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var todoItems: [TodoItem] = []
    @State private var showingAddTodo = false
    var body: some View {
        NavigationView {
            VStack {
                List(todoItems) { item in
                    TodoCircleView(todoItem: item)
                }
                
                Button("Add Todo") {
                    showingAddTodo = true
                }
                .sheet(isPresented: $showingAddTodo) {
                    AddTodoView { newTodo in
                        todoItems.append(newTodo)
                        showingAddTodo = false
                    }
                }
            }
            .navigationTitle("Todo")
            .onAppear {
                NetworkManager.shared.fetchTodoItems { fetchedItems in
                    todoItems = fetchedItems
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
