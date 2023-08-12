//
//  TodoItem.swift
//  PopTask
//
//  Created by Nicolas Liu on 8/12/23.
//

import Foundation

struct TodoItem: Identifiable, Hashable {
    var id: UUID = UUID()
    var description: String
    var dateCreated: Date
    var importance: ImportanceLevel
    var category: CategoryType
}

enum ImportanceLevel: Int {
    case low, medium, high
}

enum CategoryType: String {
    case personal, work, social
}
