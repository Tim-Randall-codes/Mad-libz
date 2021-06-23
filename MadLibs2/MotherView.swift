//
//  MotherView.swift
//  MadLibs2
//
//  Created by Tim Randall on 22/6/21.
//

import SwiftUI

struct MotherView: View {
    @StateObject var viewRouter: ViewRouter
    @StateObject var ansOne: answer
    var body: some View {
        switch viewRouter.currentPage {
        case .page1:
            ContentView(viewRouter: viewRouter, ansOne: ansOne)
        case .page2:
            ContentView2(viewRouter: viewRouter, ansTwo: ansTwo)
        case .page3:
            ContentView3(viewRouter: viewRouter, ansThree: ansThree)
        case .page4:
            ContentView4(viewRouter: viewRouter, ansFour: ansFour)
        case .resultPage:
            ContentView5(viewRouter: viewRouter, ansOne: ansOne, ansTwo: ansTwo, ansThree: ansThree, ansFour: ansFour)
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter(), ansOne: answer())
    }
}
