//
//  BackButton.swift
//  GoodDeedGalaxy
//
//  Created by Linda A. Lewis on 5/30/24.
//

import SwiftUI


struct BackButton: View {
    
    @Environment(\.presentationMode) private var
        presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
//             back navigation
            Spacer()
                .navigationBarBackButtonHidden(false)
                .toolbar(content: {
                    ToolbarItem (placement:
                            .navigationBarLeading) {
                                
                                Button(action: {
                                    presentationMode.wrappedValue
                                        .dismiss()
                                }, label: {
//                                    Image(systemName: "arrow.left")
                                    Image(systemName: "house")
                                        .foregroundColor(.blue)
                                    Text("home")
                                        .foregroundColor(.blue)
                                    
                                })
                            }
                })
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    BackButton()
}
