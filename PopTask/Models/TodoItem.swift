//
//  TodoItem.swift
//  PopTask
//
//  Created by Nicolas Liu on 8/12/23.
//

import Foundation

struct TodoItem {
    var id: String
    var description: String
    var dateCreated: Date
    var importance: ImportanceLevel
    var category: CategoryType
}
