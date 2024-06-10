//
//  ParentCodePage.swift
//  GoodDeedGalaxy
//
//  Created by Linda A. Lewis on 5/20/24.
//

import SwiftUI

struct ParentCodePage: View {
    @Environment(\.presentationMode) private var
        presentationMode: Binding<PresentationMode>
    @ObservedObject var scene = goToPages()
    @State private var showingAlert = false
    @State private var showingPopover = false
    @State private var username: String = ""
    @FocusState private var emailFieldIsFocused: Bool
    @State var password: String = ""
    @State var presentChildSelectView = false
    @State var passwordTxt = ""
    var body: some View {
        VStack  {
            NavigationStack {
                
                
                //                       NavigationLink(destination:);) {
                Text("Parent")
                TextField("EnterPassword", text: $passwordTxt)
                Button(action:{
                    if (passwordTxt == "") {
                        scene.state = .ChildSelectView
                    }
                }){
                    Text("To Parent View")
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            scene.state = .loginview
                        }
                    label: {
                        Text("Back")
                            .foregroundStyle(.red)
                    }
                    }
                }
            }
        }
    }
}


#Preview {
    ParentCodePage()
}
