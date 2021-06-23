//
//  ContentView4.swift
//  MadLibs2
//
//  Created by Tim Randall on 22/6/21.
//

import SwiftUI

struct ContentView4: View {
    @StateObject var viewRouter: ViewRouter
    @StateObject var ansFour: answer
    var body: some View {
        VStack{
            Text("At the restaurant you ordered:")
                .padding()
            TextField("what food?", text:$ansFour.ans)
                .padding()
            Button("Next scene", action:{
                viewRouter.currentPage = .resultPage
            })
        }
    }
}

struct ContentView4_Previews: PreviewProvider {
    static var previews: some View {
        ContentView4(viewRouter: ViewRouter(), ansFour: answer())
    }
}
