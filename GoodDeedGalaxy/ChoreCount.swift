//
//  Counter.swift
//  ColoredGraphandRocket
//
//  Created by Linda A. Lewis on 5/16/24.
//

import SwiftUI

struct ChoreCount: View {
    @ObservedObject var scene = goToPages()
    @State var count : Int = 0
    var body: some View {
        Text("\(count)")
            .font(Font.system(size: 30))
        
//        could button be associated with the child image and the count?
        Button(action: {self.count = self.count + 1}) {
            VStack {
            Image("childastronaut2")
                Text("Click emoji to gain points")
                
                    .font(.headline)
            }
        }
//        enum Countcolor {
//            case = Color1 = 5
//            }
    }
}


#Preview {
    ChoreCount()
}
