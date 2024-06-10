//
//  SwiftUIView.swift
//  RetroAnimationToons
//
//  Created by Linda A. Lewis on 4/12/24.
//

import SwiftUI

struct TodoDetailView: View {
    var todo: Todo
    
    var body: some View {
        
            VStack(alignment: .leading, spacing: 10) {
                Text(todo.title)
                //                .font(.title)
                    .font(.custom("Silom", size: 20))
            }
            .padding()
            .navigationTitle("Todo Details")
        }
    private func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: date)
        
    }
}

#Preview {
    TodoDetailView(todo: .init(id: 0, title: "Clean your room"))
}

