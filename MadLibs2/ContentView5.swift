//
//  ContentView5.swift
//  MadLibs2
//
//  Created by Tim Randall on 22/6/21.
//

import SwiftUI

struct ContentView5: View {
    @StateObject var viewRouter: ViewRouter
    @StateObject var ansOne: answer
    @StateObject var ansTwo: answer
    @StateObject var ansThree: answer
    @StateObject var ansFour: answer
    var body: some View {
        VStack{
        Text("Yesterday we went shopping at \(ansOne.ans). At the store you bought \(ansTwo.ans). Then you went to your favourite restaurant \(ansThree.ans). At the restaurant you ordered \(ansFour.ans).")
            Button("Make new story", action:{
                viewRouter.currentPage = .page1
                ansOne.ans = ""
                ansTwo.ans = ""
                ansThree.ans = ""
                ansFour.ans = ""
            })
    }
    }
}

struct ContentView5_Previews: PreviewProvider {
    static var previews: some View {
        ContentView5(viewRouter: ViewRouter(), ansOne: answer(), ansTwo: answer(), ansThree: answer(), ansFour: answer())
    }
}
