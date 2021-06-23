//
//  ContentView3.swift
//  MadLibs2
//
//  Created by Tim Randall on 22/6/21.
//

import SwiftUI

struct ContentView3: View {
    @StateObject var viewRouter: ViewRouter
    @StateObject var ansThree: answer
    var body: some View {
        VStack{
            Text("You then went to your favourite restaurant:")
                .padding()
            TextField("Enter restaurant", text:$ansThree.ans)
                .padding()
            Button("Next scene", action:{
                viewRouter.currentPage = .page4
            })
        }
    }
}

struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3(viewRouter: ViewRouter(), ansThree: answer())
    }
}
