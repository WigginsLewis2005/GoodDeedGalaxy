//
//  ToDoListViewModel.swift
//  Chores
//
//  Created by Linda A. Lewis on 5/29/24.
//

import SwiftUI
import Foundation

///ViewModel fro list of items view
///Primary tab
class ToDoListViewModel: ObservableObject {
    @Published var showingNewItemView = false
    @Published var chores: [Todo] = [
        Todo(id: 1, title: "Wash Dishes"),
        Todo(id: 2, title: "Fold Clothes"),
        
    ]
    
    init() {}
}
//struct ToDoListViewModel: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}

//#Preview {
//    ToDoListViewModel()
//}
