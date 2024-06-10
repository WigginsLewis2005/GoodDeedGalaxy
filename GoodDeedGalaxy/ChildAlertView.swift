//
//  ChildAlertView.swift
//  GoodDeedGalaxy
//
//  Created by Linda A. Lewis on 5/7/24.
//

import SwiftUI

// create struct for child name and picture
struct childInfo: Identifiable, Hashable {
    let id: Int
    let name: String
    let image: String
}

// array of different child info
//      (todo: saving user input and having it saved here)
let childinfo: [childInfo] = [
    childInfo(id: 1, name: "Kid1", image: "girlastronaut"),
    childInfo(id: 2, name: "Kid2", image: "childastronaut2"),
    
    
]

// code showing how its going to look like
struct ChildAlertView: View {
    @ObservedObject var scene = goToPages()
    @State var childCorrect = false
    @State var childIncorrect = false
    @Binding var showingAlert: Bool
    var childinfo: childInfo
    
    var body: some View {
         
                    
                    Button {
                        showingAlert = true
                    } label: {
                        VStack {
                            Image(childinfo.image)
                            Text(childinfo.name)
                                .font(.largeTitle)
                                .foregroundStyle(.blue)
                        }
                    }
            }
        }
    

        
        // to display all of child info, we are going to call them in a ForEach in the ChildSelectView
        
        // sample data on how it will look
        #Preview {
            ChildAlertView(showingAlert: .constant(false),childinfo: childInfo(id: 1, name: "Kid1", image: "childastronaut2"))
        }
