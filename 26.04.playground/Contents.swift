//: Playground - noun: a place where people can play

import UIKit

var i = 5
i += 1

var a: UInt8 = UInt8.max
var b: UInt8 = 3

a &+ b

let overflow: Bool = a.addingReportingOverflow(b).1

let result = overflow ? UInt8.max : a + b

var defaultPass = "1234"
var userPass: String?

var usedPass = userPass ?? defaultPass


let range = 1...5
let halfOpen = 1..<5

func boo(userIs User: String?) {
    
    //User is a constant and cannot be changed
    // use var User = User to make it variable
    
    guard let name = User else {
        fatalError("ediot")
    }
}

//boo(userIs: nil)



