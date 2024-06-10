//
//  NewItemView.swift
//  Chores
//
//  Created by Linda A. Lewis on 5/28/24.
//

import SwiftUI

struct NewItemView: View {
//    @StateObject var viewModel = NewItemViewViewModel()
    @State var viewModel: ToDoListViewModel
    @State var todoTitle: String = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("New Task")
                .font(.system(size: 32))
                .bold()
            Form {
                //            title
                TextField("Type your task here", text: $todoTitle)
                //            DueDate
                
                //            Button
//                TLButton(title: "Save",
//                         background: .pink) {
//                    viewModel.save()
//                    newItemPresented = false
                }
            Button("Add"){
                //TODO: make a new Todo item
                let todo = Todo(id: 0, title: todoTitle)
                //TODO: append the new item to the viewModel array of todo
                viewModel.chores.append(todo)
                presentationMode.wrappedValue.dismiss()
            }
            }
        }
    }


#Preview {
    NewItemView(viewModel: ToDoListViewModel())
}

//struct NewItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewItemView(newItemPresented: Binding(get: {
//            return true
//        }, set: { _ in
//            
//        }))
//    }
//}
