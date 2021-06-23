//
//  ContentView.swift
//  MadLibs2
//
//  Created by Tim Randall on 22/6/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    @StateObject var ansOne: answer
    var body: some View {
        VStack{
            Text("Yesterday we went shopping at ")
                .padding()
            TextField("store?", text:$ansOne.ans)
            Button("Next Scene", action:{
                viewRouter.currentPage = .page2
            })
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter(), ansOne: answer())
    }
}
