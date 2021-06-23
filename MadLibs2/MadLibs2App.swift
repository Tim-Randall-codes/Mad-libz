//
//  MadLibs2App.swift
//  MadLibs2
//
//  Created by Tim Randall on 22/6/21.
//

import SwiftUI

@main
struct MadLibs2App: App {
    @StateObject var viewRouter = ViewRouter()
    var body: some Scene {
        WindowGroup {
            MotherView(viewRouter: viewRouter, ansOne: ansOne)
        }
    }
}
