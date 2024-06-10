//
//  ProgressBar.swift
//  GoodDeedGalaxy
//
//  Created by Linda A. Lewis on 5/10/24.
//

import SwiftUI

struct ProgressBar1: View {
    @State private var RocketColor = Color.red
    var maxWidth: Double {
        return min(Double(progress), containerWidth)}
    @State private var progressTitle: String = ""
    @State private var progress: Int = 0
    @State private var containerWidth: CGFloat = 0
    @ObservedObject var scene = goToPages()
    var width: CGFloat = 100
    var height: CGFloat = 500
    var percent: CGFloat = 69
//    yellow, yellow, orange, red, red
    var color1 = Color(.yellow)
    var color2 = Color(.yellow)
    var color3 = Color(.orange)
    var color4 = Color(.red)
    var color5 = Color(.red)
    var color6 = Color(.red)
    
    let impactFeedbackHeavy = UIImpactFeedbackGenerator(style: .heavy)
    let impactFeedbackMedium = UIImpactFeedbackGenerator(style: .medium)
    let impactFeedbackLight = UIImpactFeedbackGenerator(style: .light)
    let impactFeedbackSoft = UIImpactFeedbackGenerator(style: .soft)
    let impactFeedbackRigid = UIImpactFeedbackGenerator(style: .rigid)
//    enum {
//        case Image = Image("trackerRocket")
//        case Image = Image("rocketSmoke")
//        case Image =  Image("childastronaut2")
//    }
    //    let Rocket = trackerRocket
    
    
    
    
    var body: some View {
        
        let multiplier = width / 100
        
        ZStack {
            Image("Galaxybackground.")
                .resizable()
                .ignoresSafeArea(edges: .top)
            ZStack(alignment: .leading) {
                GeometryReader { geo in
                    RoundedRectangle(cornerRadius: 60)
                        .foregroundColor(.clear)
                        .onAppear {
                            containerWidth = geo.size.width
                        }
                }
                RoundedRectangle(cornerRadius: 60)
                    .stroke(Color.black)
            
            HStack {
                VStack {
                    Image("trackerRocket")
                        .padding(.bottom, 110)
                    ZStack(alignment: .leading) {
                        GeometryReader { geo in
                            RoundedRectangle(cornerRadius: 60)
                                .foregroundColor(.clear)
                                .onAppear {
                                    containerWidth = geo.size.width
                                }
                        }
                        RoundedRectangle(cornerRadius: 60)
                            .stroke(Color.black)
                        
                        ZStack(alignment: .trailing) {
                            RoundedRectangle(cornerRadius: 60)
                                .fill(RocketColor)
                            
                            
                            Text(progressTitle)
                                .monospaced()
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 6, leading: 12, bottom: 6, trailing: 12))
                        }
                        .padding(2)
                        .frame(minWidth: maxWidth)
                        .fixedSize()
                        
                    }
                    .rotationEffect(Angle(degrees: 270))
                    .fixedSize(horizontal:false, vertical: true)
                    .padding(20)
                    .onAppear {
                        
                        progressTitle = "\(progress)%"
                    }
                    
                    
                    
                    VStack{
                        
                        Image("childastronaut2")
                            .padding(.top, 200)
                        
                        Button("Chore Points") {
                            progress = 0
                            
                            Task {
                                
                                for i in 1...100 {
                                    
                                    RocketColor = Color.yellow
                                    
                                    
                                    if i >= 40 {
                                        RocketColor = Color.orange
                                    }
                                    
                                    if i >= 61 {
                                        RocketColor = Color.red
                                    }
                                    
                                    
                                    try await Task.sleep(until: .now.advanced(by: .milliseconds(150)), clock: .continuous)
                                    progressTitle = "\(i)%"
                                    withAnimation {
                                        progress =  Int(Double(containerWidth) / 100 * Double(i))
                                        
                                    }
                                }
                            }
                        }
                        .foregroundStyle(.white)
                        
                        
                        Image("rocketSmoke")
                            .resizable()
                            .frame(height: 50)
                            .frame(width: 450)
                    }
                }
            
        
    
                    
//                    Image("childastronaut2")
//                    Button("Chore Points") {
//                        progress = 0
//                    Task {
//                        
//                        for i in 1...100 {
//                            
//                            RocketColor = Color.yellow
//                            
//                            
//                            if i >= 40 {
//                                RocketColor = Color.orange
//                            }
//                            
//                            if i >= 61 {
//                                RocketColor = Color.red
//                            }
//                            
//                            
//                            try await Task.sleep(until: .now.advanced(by: .milliseconds(150)), clock: .continuous)
//                            progressTitle = "\(i)%"
//                            withAnimation {
//                                progress =  Int(Double(containerWidth) / 100 * Double(i))
//                            }
//                                
//                            }
//                        }
//                        }
//                    }
//                    RoundedRectangle(cornerRadius: height, style: .continuous)
//                        .frame(width: percent * multiplier, height: height)
//                        .background(LinearGradient(gradient: Gradient(colors: [color1, color2, color3, color4, color5]),
//                                                   startPoint: .bottom, endPoint: .top))
//                        .clipShape(RoundedRectangle(cornerRadius: height, style:
//                                .continuous))
//                        .foregroundColor(.clear)
//                    Image("rocketSmoke")
//                        .resizable()
//                        .frame(width: 100, height: 50)
//                        .imageScale(.small)
//                        .foregroundColor(.gray)
                   
                   

               }
                
//                HStack {
//                    VStack {
//                Image("trackerRocket")
//                
//                RoundedRectangle(cornerRadius: height, style: .continuous)
//                    .frame(width: percent * multiplier, height: height)
//                    .background(LinearGradient(gradient: Gradient(colors: [color1, color2, color3, color4, color5]),
//                                               startPoint: .bottom, endPoint: .top))
//                    .clipShape(RoundedRectangle(cornerRadius: height, style:
//                            .continuous))
//                    .foregroundColor(.clear)
////                Image("rocketSmoke")
////                    .resizable()
////                    .frame(width: 100, height: 50)
////                    .imageScale(.small)
////                    .foregroundColor(.gray)
//                Image("girlastronaut")
                        
                        
//                        
//                    }
//                }
            }
        }
//               
                    
                    //                ChoreCount
                    //                VStack {
                    //                    Image("childastronaut2")
                }
               
            }

//#Preview {
//    ProgressBar1()
//}

struct ProgressBar1_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar1()
    }
}
