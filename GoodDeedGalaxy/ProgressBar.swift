//
//  ProgressBar.swift
//  GoodDeedGalaxy
//
//  Created by Linda A. Lewis on 5/10/24.
//

import SwiftUI

struct ProgressBar: View {
    @ObservedObject var scene = goToPages()
    var width: CGFloat = 100
    var height: CGFloat = 500
    var percent: CGFloat = 69
    var color1 = Color(.yellow)
    //    var color2 = Color(.yellow)
    var color3 = Color(.orange)
    var color4 = Color(.red)
    //    var color5 = Color(.red)
    //    var color6 = Color(.red)
    
    let impactFeedbackHeavy = UIImpactFeedbackGenerator(style: .heavy)
    let impactFeedbackMedium = UIImpactFeedbackGenerator(style: .medium)
    let impactFeedbackLight = UIImpactFeedbackGenerator(style: .light)
    let impactFeedbackSoft = UIImpactFeedbackGenerator(style: .soft)
    let impactFeedbackRigid = UIImpactFeedbackGenerator(style: .rigid)
    //    let Rocket = trackerRocket
    
    
    
    var body: some View {
        ZStack {
            Image("Galaxybackground.")
                .resizable()
                .ignoresSafeArea(edges: .top)
            
            
            let multiplier = width / 100
            
            ZStack(alignment: .leading) {
                VStack {
                    HStack {
                        Image("childastronaut2")
                        //                    ternary goes here
                        
                        Image("trackerRocket")
                        
                    }
                    RoundedRectangle(cornerRadius: height, style: .continuous)
                        .frame(width: percent * multiplier, height: height)
                        .background(
                            LinearGradient(gradient: Gradient(colors: [color1, color3, color4]),
                                           startPoint: .bottom, endPoint: .top))
                        .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                    
                        .foregroundColor(.clear)
                    
                    
                    HStack {
                        Image("rocketSmoke")
                            .resizable()
                            .imageScale(.large)
                            .foregroundColor(.gray)
                        
                        
                        VStack {
                            
                        }
                    }
                }
            }
        }
    }
}


//#Preview {
//    ProgressBar()
//}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(scene: goToPages())
    }
}
