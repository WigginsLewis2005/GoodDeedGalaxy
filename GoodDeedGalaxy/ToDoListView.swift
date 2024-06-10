//
//  ToDoListView.swift
//  Chores
//
//  Created by Linda A. Lewis on 5/29/24.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewModel()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    //  action
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(viewModel: viewModel)
            }
        }
    }
}

//#Preview {
//    ToDoListView()
//}

struct ToDoListItemsView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userId: "")
    }
}
