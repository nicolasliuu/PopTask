//
//  TodoCircleView.swift
//  PopTask
//
//  Created by Nicolas Liu on 8/12/23.
//

import SwiftUI

struct TodoCircleView: View {
    var todoItem: TodoItem

    var body: some View {
        ZStack {
            Circle()
                .fill(colorForImportance(importance: todoItem.importance))
                .frame(width: calculateSizeBasedOnDate(date: todoItem.dateCreated), height: calculateSizeBasedOnDate(date: todoItem.dateCreated))
            
            Text(todoItem.description)
                .foregroundColor(.white)
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .frame(width: 60, height: 60) // Adjust this as needed for your design
        }
        .onTapGesture {
            // Handle tap actions, like marking as done or showing more details.
        }
    }
    
    func colorForImportance(importance: ImportanceLevel) -> Color {
        switch importance {
        case .low:
            return Color.green
        case .medium:
            return Color.orange
        case .high:
            return Color.red
        }
    }
    
    func calculateSizeBasedOnDate(date: Date) -> CGFloat {
        // This is a dummy implementation. You might want to create a more complex algorithm based on how long ago the task was created.
        let daysSinceCreation = Calendar.current.dateComponents([.day], from: date, to: Date()).day ?? 0
        
        switch daysSinceCreation {
        case 0...3:
            return 60
        case 4...7:
            return 80
        default:
            return 100
        }
    }
}
