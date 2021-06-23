//
//  Variables.swift
//  MadLibs2
//
//  Created by Tim Randall on 22/6/21.
//

import Foundation
enum Page {
    case page1
    case page2
    case page3
    case page4
    case resultPage
}
class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .page1
}
class answer: ObservableObject {
    var ans: String = ""
}
var ansOne = answer()
var ansTwo = answer()
var ansThree = answer()
var ansFour = answer()
