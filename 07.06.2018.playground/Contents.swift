//: Playground - noun: a place where people can play

import UIKit

struct Point {
    var x = 0;
    var y = 0;
}

struct Size {
    var width = 0;
    var height = 0;
}

struct Rect {
    var origin = Point()
    var size = Size()
    
    var center : Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y:centerY)
        }
        // instead of (newCenter) you can write newValue
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
    
//    var center : Point {
//      //read only property:
//            let centerX = origin.x + (size.width / 2)
//            let centerY = origin.y + (size.height / 2)
//            return Point(x: centerX, y:centerY)
//
//    }
    
}



var origin = Point(x: 34, y: 34)
var size = Size(width: 56, height: 98)

var rect = Rect(origin: origin, size: size)

rect.origin.x
rect.center.x

rect.center.x = 123
rect.origin.x



class Boo {
    
    var firstName: String;
    var password: String;
    
    init(Name: String, lastname: String, password: String = "superduper", username: String? = nil) {
        
        self.firstname = firstName
        
    }
    
    
    var password: String {
        willSet {
            if(newValue.count < 12){
                print("password zu kurz")
            }
            
            didSet {
                if(password.count < 12){
                    password = oldValue
                }
            }
            
        }
    }
    
}


