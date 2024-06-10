
//  ProgressBar.swift
//  GoodDeedGalaxy
//
//  Created by Linda A. Lewis on 5/10/24.
//

import SwiftUI

struct ProgressBar2: View {
    @Environment(\.presentationMode) private var
presentationMode: Binding<PresentationMode>
    
    @State private var containerWidth: CGFloat = 0
    @State private var progressTitle: String = ""
    @State private var progress: Int = 0
    @State private var RocketColor = Color.red
    var maxWidth: Double {
        return min(Double(progress), containerWidth)
    }
    @ObservedObject var scene = goToPages()
    var width: CGFloat = 20
    var height: CGFloat = 600
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
        NavigationStack {
            ZStack {
                Image("Galaxybackground.")
                    .resizable()
                    .ignoresSafeArea(edges: .top)
                
                let multiplier = width / 100
                
                
                VStack {
                    HStack {
                        Spacer()
                            .toolbar(content:  {
                                ToolbarItem (placement:
                                        .navigationBarLeading) {
                                            Button(action: {
                                                presentationMode.wrappedValue
                                                    .dismiss()
                                                scene.state = .ChildSelectView
                                            }, label: {
                                                Image(systemName: "arrow.left")
                                                    .foregroundColor(.purple)
                                                Text("Child Select View")
                                                    .foregroundColor(.purple)
                                                
                                            })
                                        }
                                
                                ToolbarItem (placement:
                                        .navigationBarTrailing) {
                                            
                                            Button(action: {
                                                presentationMode.wrappedValue
                                                    .dismiss()
                                                scene.state = .ChoresView
                                            }, label: {
                                                Text("Chores View")
                                                    .foregroundColor(.purple)
                                                
                                                Image(systemName: "arrow.right")
                                                    .foregroundColor(.purple)
                                                
                                                
                                            })
                                        }
                            })
                    }
                    
                    
                    Spacer()
                    HStack {
                        
                        //                    ternary goes here
                        
                        Image("trackerRocket")
                            .padding()
                        
                    }
                    
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
                        
                        
                        Image("rocketSmoke")
                            .resizable()
                            .frame(height: 50)
                            .frame(width: 450)
                    }
                }
            }
        }
    }
}


//#Preview {
//    ProgressBar()
//}

struct ProgressBar2_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar2(scene: goToPages())
    }
}




