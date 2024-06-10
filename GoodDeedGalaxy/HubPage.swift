//
//  HubPage.swift
//  GoodDeedGalaxy
//
//  Created by Linda A. Lewis on 5/24/24.
//

import SwiftUI

struct HubPage: View {
    var body: some View {
        ZStack {
            Image("Galaxybackground.")
                .resizable()
                .ignoresSafeArea(edges: .top)
        
            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.purple)
                    .frame(width: 350, height: 50)
                    .overlay{
                        Text("HUB")
                            .font(.largeTitle)
                    }
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.purple)
                    .frame(width: 350, height: 50)
                    .overlay{
                        Text("Why use Good Deed Galazy?")
                            .font(.title2).bold()
                    }
                    .padding()
                
                ZStack{
                    
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.purple)
                        .frame(width: 350, height: 400)
                    
                    VStack{
                        
                        Text("*Create custom chores for your kids.")
                            .padding()
                            
                        Text("*Create custom rewards for your kids.")
                            .padding()
                        Text("*Watch your kids soar through Good Deed Galaxy as they become more responsible.")
                            .padding()
                        Text("*Leave encouraging messages as your child completes each task.")
                        
                    }
                    .font(.headline).bold()
                    
                    
                }
               
                
                
                
                
                
                
                   // .overlay{
                       
                            
                            
                                
                          
                                
                      
                
                        
//                    }
//                    .background(Color.lightPeach)
//                    .foregroundStyle(.black)
                
                
                
            }
        }
    }
}

#Preview {
    HubPage()
}
