//
//  ContentView5.swift
//  MadLibs2
//
//  Created by Tim Randall on 22/6/21.
//

import SwiftUI

struct ContentView5: View {
    @StateObject var viewRouter: ViewRouter
    @ObservedObject var ansOne: answer
    @ObservedObject var ansTwo: answer
    @ObservedObject var ansThree: answer
    @ObservedObject var ansFour: answer
    var body: some View {
        Text("entry one \(ansOne.ans) entry two \(ansTwo.ans) entry three \(ansThree.ans) entry four \(ansFour.ans)")
    }
}

struct ContentView5_Previews: PreviewProvider {
    static var previews: some View {
        ContentView5(viewRouter: ViewRouter(), ansOne: answer(), ansTwo: answer(), ansThree: answer(), ansFour: answer())
    }
}
