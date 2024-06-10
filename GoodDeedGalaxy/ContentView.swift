//
//  ContentView.swift
//  GoodDeedGalaxy
//
//  Created by Linda A. Lewis on 5/23/24.
//

import SwiftUI

struct ContentView: View {
    @State var percent: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(Int(percent))%")
                .font(.system(size: 40, weight: .bold))
            
//            ProgressBar(width: 100, height: 500, percent: percent, color1: .yellow, color3: .orange, color4: .red)
//                .animation(.spring())
//            ProgressBar2(scene: goToPages.PageViews , width: 100, height: 500, percent: percent, color1: .yellow, color3: .orange, color4: .red)
//                .animation(.spring())
                
            Button(action: { percent = CGFloat.random(in: 0...100) }, label: {
                Text("Generate Random Number")
            })
        }
    }
}

#Preview {
    ContentView()
}
