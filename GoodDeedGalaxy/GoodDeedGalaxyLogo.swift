//
//  GoodDeedGalaxyLogo.swift
//  GoodDeedGalaxy
//
//  Created by Linda A. Lewis on 5/28/24.
//

import SwiftUI

struct GoodDeedGalaxyLogo: View {
    var body: some View {
        ZStack {
            Image("Galaxybackground.")
                .resizable()
                .opacity(49)
                .ignoresSafeArea(edges: .top)
            ZStack {
                Rectangle()
                    .fill(Color.blue).ignoresSafeArea()
            }
            VStack {

                Capsule()
//                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .foregroundColor(Color.purple)
                    .frame(height: 44)
                    .overlay(Text("Good Deed Galaxy"))

                    .opacity(50)
                   
                    .font(.largeTitle)
                Image("GoodDeedGalaxyLogo")
            }
            .padding()
            .background(Image("Galaxybackground.").ignoresSafeArea())
            .padding()
        }
    }
}

#Preview {
    GoodDeedGalaxyLogo()
}
