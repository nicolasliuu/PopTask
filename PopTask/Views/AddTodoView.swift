// AddTodoView.swift

import SwiftUI

struct AddTodoView: View {
    @State private var description: String = ""
    @State private var importance: ImportanceLevel = .low
    @State private var category: CategoryType = .personal
    var completion: (TodoItem) -> Void
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Description", text: $description)
                
                Picker("Importance", selection: $importance) {
                    Text("Low").tag(ImportanceLevel.low)
                    Text("Medium").tag(ImportanceLevel.medium)
                    Text("High").tag(ImportanceLevel.high)
                }
                
                Picker("Category", selection: $category) {
                    Text("Personal").tag(CategoryType.personal)
                    Text("Work").tag(CategoryType.work)
                    Text("Social").tag(CategoryType.social)
                }
                
                Button("Add") {
                    let newItem = TodoItem(description: description, dateCreated: Date(), importance: importance, category: category)
                    completion(newItem)
                }
            }
            .navigationTitle("Add New Todo")
        }
    }
}
