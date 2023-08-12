//
//  NetworkManager.swift
//  PopTask
//
//  Created by Nicolas Liu on 8/12/23.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    private var dummyItems: [TodoItem] = [
        TodoItem(description: "Test task 1", dateCreated: Date(), importance: .medium, category: .work),
        TodoItem(description: "Test task 2", dateCreated: Date(), importance: .high, category: .personal)
    ]
    
    func fetchTodoItems(completion: @escaping ([TodoItem]) -> Void) {
        completion(dummyItems)
    }
    
    func addTodoItem(_ item: TodoItem, completion: @escaping (Bool) -> Void) {
        dummyItems.append(item)
        completion(true)  // In a real scenario, you'd check for server responses.
    }
}
