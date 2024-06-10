//
//  BarItem.swift
//  CustomTabBar
//
//  Created by Linda A. Lewis on 4/28/24.
//

import Foundation
import SwiftUI

//struct TabBarItem: Hashable {
//    let iconName: String
//    let title: String
//    let Color: Color
//}

enum TabBarItem: Hashable {
    case  chores, Rewards, profile, tracker
    
    var iconName: String {
        switch self {
        case . chores: return "list.bullet.clipboard"
        case .Rewards: return "dollarsign"
        case .profile: return "person"
        case .tracker: return "timer"
        }
    }
    
    var title: String {
        switch self {
        case .chores: return "Chores"
        case .Rewards: return "Rewards"
        case .profile: return "profile"
        case .tracker: return "Tracker"
        }
    }
    
    var color: Color {
        switch self {
        case .chores: return Color.red
        case .Rewards: return Color.blue
        case .profile: return Color.green
        case .tracker: return Color.orange
        }
    }
}

//#Preview {
//    ChoresView()

//static let tabs: [TabBarItem] = [
//    TabBarItem(iconName: "house", title: "Home", Color: Color.red),
//    TabBarItem(iconName: "heart", title: "Favorites", Color: Color.blue),
//    TabBarItem(iconName: "person", title: "Profile", Color: Color.green),
//]
