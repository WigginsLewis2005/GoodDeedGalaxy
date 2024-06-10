//
//  CustomTabBarContainerVeiw.swift
//  CustomTabBar
//
//  Created by Linda A. Lewis on 4/24/24.
//

import SwiftUI

//struct TabView2<SelectionValue, Content> : View where SelectionValue : Hashable, Content : View {
//    
//}
////both these lines of code are the same
//struct TabView3<SelectionValue:Hashable, Content:View> : View {
//    
//}

struct CustomTabBarContainerVeiw<Content:View>: View {
    
    @Binding var selection: TabBarItem
    let content: Content
    @State private var tabs: [TabBarItem] = []
    
    init(selection: Binding<TabBarItem>, @ViewBuilder content: () -> Content) 
    {
        self._selection = selection
        self.content = content()
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            content
                .ignoresSafeArea()
            
            CustomTabBarView(tabs: tabs, selection: $selection, localSelection: selection)
            
        }
        .onPreferenceChange(TabBarItemsPreferenceKey.self, perform: { value in
            self.tabs = value
        })
    }
}

struct CustomTabBarContainerVeiw_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [
        .chores, .Rewards, .profile
    ]
    
//    #Preview {
    static var previews: some View {
        CustomTabBarContainerVeiw(selection: .constant(tabs.first!)) {
            Color.red
        }
    }
}
