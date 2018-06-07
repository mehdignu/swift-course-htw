
//: Playground - noun: a place where people can play

import UIKit

enum Direction {
    case north
    case south
    case west
    case east
}

var direct = Direction.east
direct = .south

enum Planet {
    case venus, earth, mars
}

var plan = Planet.earth


//case has no break
switch plan {
case .earth:
    print("mostly harmless")
default:
    print("boohoo")
}

enum Barcode {
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}

var code = Barcode.UPCA(8, 88, 1234, 5555)

switch code {
case let .UPCA(a,_,_,_):
    print(a)
default:
    print("boohoo")
}

enum acii : Character {
    case tab = "b"
}


//structuren sind sammlungen von eigenschaften
struct Rectangle {
    
    init(a: Double, b: Double) {
        self.a = a
        self.b = b
    }
    
    init(value: Double) {
        a = value
        b = value
    }
    
    var a: Double
    var b: Double
    
    func area() -> Double{
        return a * b
    }
}

let rect = Rectangle(value: 33)

rect.area()


struct Volume {
    var base: Rectangle
    var height: Double
    
    
    func volume() -> Double {
        return base.area() * height
    }
    
    mutating func changeHeight(newVal: Double) {
        height = newVal
    }
}

var vol = Volume(base: rect, height: 63.5)

vol.height = 5


class ship {
    let tonnage: Volume
    var speed: Double?
    let lenght: Double
    
    init(){
        tonnage = Volume(base: Rectangle(a: 23.2, b: 42.4), height: 10)
        lenght = 120.9
    }
}

let titanic = ship()

