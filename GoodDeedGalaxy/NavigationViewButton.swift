//
//  NavigationViewButton.swift
//  GoodDeedGalaxy
//
//  Created by Linda A. Lewis on 5/30/24.
//

import SwiftUI

struct NavigationViewButton: View {
    var body: some View {
        NavigationView{
            VStack {
                NavigationLink(destination: ChoresView()) {
                    Text("Move to Chores Page")
                        .foregroundColor(.purple)
                        .frame(width: 100, height: 50, alignment: .topTrailing)
                        .background(Color.lightPeach)
                        .cornerRadius(300)
                }
            }
//            .navigationBarTitle("ChoresView")
        }
    }
}

#Preview {
    NavigationViewButton()
}
