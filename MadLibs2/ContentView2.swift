//
//  ContentView2.swift
//  MadLibs2
//
//  Created by Tim Randall on 22/6/21.
//

import SwiftUI

struct ContentView2: View {
    @StateObject var viewRouter: ViewRouter
    @StateObject var ansTwo: answer
    var body: some View {
        VStack{
            Text("At the store you bought ")
                .padding()
            TextField("Enter what you bought", text:$ansTwo.ans)
                .padding()
            Button("Next scene", action:{
                viewRouter.currentPage = .page3
            })
            .padding()
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2(viewRouter: ViewRouter(), ansTwo: answer())
    }
}
