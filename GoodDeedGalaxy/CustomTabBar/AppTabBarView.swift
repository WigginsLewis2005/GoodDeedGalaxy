//
//  AppTabBarView.swift
//  CustomTabBar
//
//  Created by Linda A. Lewis on 4/24/24.
//

import SwiftUI

//lessons from prerequisti videos
//Genreics
//ViewBuilder
//PreferenceKey
//MathchedGeometryEffect

struct AppTabBarView: View {
    
    @State private var selection: String = "chores"
    @State private var tabSelection: TabBarItem =  .chores
    
    
    var body: some View {
        CustomTabBarContainerVeiw(selection: $tabSelection) {
            Color.blue
                .tabBarItem(tab: .chores, selection: $tabSelection)
                
            Color.red
                .tabBarItem(tab: .Rewards, selection: $tabSelection)
            
            Color.green
                .tabBarItem(tab: .profile, selection: $tabSelection)
            
//            Color.orange
//                .tabBarItem(tab: .messages, selection: $tabSelection)
        }
    }
}

struct AppTabBarView_Preview: PreviewProvider {
    
//    static let tabs: [TabBarItem] = [
//        TabBarItem(iconName: "house", title: "Home", Color: Color.red),
//        TabBarItem(iconName: "heart", title: "Favorites", Color: Color.blue),
//        TabBarItem(iconName: "person", title: "Profile", Color: Color.green),
//    ]
    
    static var previews: some View {
        AppTabBarView()
    }
}
//#Preview {
//    AppTabBarView()



extension AppTabBarView {
    
    private var defaultTabView: some View {
        TabView(selection: $selection) {
            Color.red
                .tabItem {
                    Image(systemName: "list.bullet.clipboard")
                    Text("Chores")
                }
            Color.blue
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorites")
                }
            Color.orange
                .tabItem {
                    Image(systemName: "timer")
                    Text("Tracker")
                }
        }
        
        
    }
}
