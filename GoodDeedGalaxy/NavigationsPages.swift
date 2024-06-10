//
//  NavigationsPages.swift
//  GoodDeedGalaxy
//
//  Created by Linda A. Lewis on 5/20/24.
//

import SwiftUI
import Foundation

class goToPages: ObservableObject {
    @Published var state = PageViews.loginview
    
    enum PageViews {
        case ChildSelectView
        case childalertview
        case progressbar
        case chorecount
        case familyprogressbar
        case loginview
        case parentcodepage
        case ProgressBarCount
        case ProgressBar2
//        case ProgressBarLogo
        case ChoresView
    }
    
}

struct AllViews: View {
    @ObservedObject var scene = goToPages()
    var percent: CGFloat = 0
    var body: some View {
        switch scene.state {
        case .ChildSelectView:
            ChildSelectView(scene: scene)
        case .childalertview:
            ChildAlertView(scene: scene, showingAlert: .constant(false), childinfo: childInfo(id: 1, name: "Bob", image: "childastronaut2"))
        case .progressbar:
            ProgressBar(scene: scene, width: 100, height: 500, percent: percent, color1: .yellow, color3: .orange, color4: .red)
        case.chorecount:
            ChoreCount(scene: scene)
        case.familyprogressbar:
            ProgressBar1(scene: scene)
        case.loginview:
            LogInView(scene: scene)
        case .parentcodepage:
            ParentCodePage(scene: scene)
        case.ProgressBar2:
            ProgressBar2(scene: scene)
        case .ProgressBarCount:
            ProgressBar2(scene: scene)
        case .ChoresView:
            ChoresView(scene: scene)
        case .ChildSelectView:
            ChildSelectView(scene: scene)
//        case.loginview:
//            ProgressBar2(scene: scene)
//        case .ProgressBarLogo:
//            <#code#>
        
        }
    }
}

//#Preview {
//    //NavigationsPages()
//}
