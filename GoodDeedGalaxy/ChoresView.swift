//
//  ChoresView.swift
//  Chores
//
//  Created by Linda A. Lewis on 5/6/24.
//

import SwiftUI

struct ChoresView: View {
    
    @Environment(\.presentationMode) private var
presentationMode: Binding<PresentationMode>
    
    @State private var users: [String] = []
    @ObservedObject var scene = goToPages()
    
    
    @StateObject var todoListVM = ToDoListViewModel()
    @State var showingNewItemViewSheet = false
    
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                // background
                Image("Galaxybackground.")
                    .resizable()
                    .ignoresSafeArea(edges: .top)

                VStack {
                    HStack {
                        Spacer()
                                            .navigationBarBackButtonHidden(false)
                        
                        
                        
                        
                        
                        // List of chores that will open to assigning chore to child
                        
                        VStack {
                            Text("Chores")
                                .padding()
                                .background(Color.purple)
                                .foregroundStyle(.black)
                                .cornerRadius(20.0)
                                .bold()
                                .padding()
                            
                            Text("Choose a chore you’d like to assign to your child. You can choose more than one.")
                                .padding()
                                .background(Color.purple)
                                .foregroundStyle(.black)
                                .cornerRadius(20.0)
                            
                            List {
                                ForEach(todoListVM.chores, id: \.self) { todo in
                                    NavigationLink(destination: TodoDetailView(todo: todo)) {
                                        HStack(alignment: .center) {
                                            VStack(alignment: .leading) {
                                                Text(todo.title)
                                                    .font(.title3)
                                                
                                                
                                                Spacer()
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                .listRowBackground(Color.purple)
                                
                            }
                            
                            .scrollContentBackground(.hidden)
                            .listRowSpacing(15)
                            
                        }
                        
                        
                        .sheet(isPresented: $showingNewItemViewSheet){
                            //TODO: show the newItemView
                            NewItemView(viewModel: todoListVM)
                        }
                        .toolbar{
                            ToolbarItem{
                                Button("Add"){
                                    //TODO: change showingNewItemViewSheet to true
                                    showingNewItemViewSheet.toggle()
                                    
                                }
                                .foregroundStyle(.purple)
                            }
                            ToolbarItem (placement:
                                    .navigationBarLeading) {
                                        
                                        
                                        Button(action: {
                                            presentationMode.wrappedValue
                                                .dismiss()
                                            scene.state = .ProgressBar2
                                        }, label: {
                                            Image(systemName: "arrow.left")
                                                .foregroundColor(.purple)
                                            Text("Rocket Progress")
                                                .foregroundColor(.purple)
                                            
                                        })
                                    }
                        }
                    }
                }
            }
        }
    }
    private func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}

#Preview {
    ChoresView()
}
