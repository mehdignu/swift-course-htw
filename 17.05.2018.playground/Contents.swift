//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func helloWorld(input : String) -> String{
    return "hello" + input
}

func darth(_ stringFunc: (String) -> String) {
    let text = "Darth"
    let helloText = stringFunc(text)
    print(stringFunc(helloText))
}

darth(helloWorld)

// closure - is a function - we give the function body to the parameter
//klausur kommt aufgabe array durchführen ohne forschleife das ganze zu berechnen

darth({
    s1 in
    let txt = s1 + " die bitch"
    return txt
})

let names = ["boohoo", "dede", "ewew", "pew", "doo", "kakakaka", ]

// var sortWithClosure = names.sorted (by: { (s1, s2) -> Bool in
//return s1 > s2 })

// var sortWithClosure = names.sorted { (s1, s2) -> Bool in s1 > s2 }

//var sortWithClosure = names.sorted { $0 < $1 }

//empfehlenswerte variante
var sortWithClosure = names.sorted() {
    $0 > $1
}
//sortWithClosure

var capitalString = names.map() {
    $0.uppercased()
}
//capitalString

let digitNames = [
    0: "Null",
    1: "Eins",
    2: "Two",
    3: "Three"
]

let numbers = [13, 21, 30, 031]

let numberString = numbers.map() {
    (number) -> String in
    //parameters are constants that's why we add  number variable
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10] + output
        number /= 10
    } while number > 0
    return output
}

//print(numberString)

let formatter = NumberFormatter()
formatter.numberStyle = .spellOut

formatter.locale = Locale(identifier: "de_DE")
print(formatter.srting(from: 16))

//calculate time of execution - with lazy it would be faster
let start = CFAbsoluteTimeGetCurrent()
let array= Array(1..250)

let factor = Array.lazy.map() { item in
    (1...item).filter() {
        number in
        return item % number == 0
    }
}

let end = CFAbsoluteTimeGetCurrent()
let diff = end - start

var vorwärts = "Vorwärts immer"
var rückwerts = vorwärts.reversed() // reversedCollection is a lazy map
rückwerts = String(rückwerts).reversed()
print(String(rückwerts))


