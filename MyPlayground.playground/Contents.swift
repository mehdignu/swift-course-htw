//: Playground - noun: a place where people can play

import UIKit

print("\n aufgabe 1 \n")

for i in 0...100 {

    if(i % 3 == 0 && i % 5 == 0){
        print("\(i) Fizz Buzz")
    } else {

    if(i % 3 == 0){
        print("\(i) Fizz")
    }
    if(i % 5 == 0){
        print("\(i) Buzz")
    }

    }
}

print("\n aufgabe 2 \n")

var array =  [36,69,987,56,4,345,90]

for i in array {
    let num = String(i)
    var sum = 0
    for j in num {
        sum = sum + Int(String(j))!
    }
    print(sum)
}


print("\n aufgabe 3 \n")

var arr =  ["Bob","Alice","Ford","Beeblebrox","Marvin"]
var len = arr.count
var sortArr = [String]()

for _ in 0...len-1 {

    var max = 0
    var c = ""

    for i in arr {
        if i.count > max {
            max = i.count
            c = i
        }
    }

    sortArr.append(c)
    arr.remove(at: arr.index(of: c)!)
    c = ""
    max = 0

}



//print(sortArr)


print("\n aufgabe 4 \n")


var ar : [Int] = [Int]()

for _ in 0...100 {
    let randNum = Int(arc4random_uniform(10))
    ar.append(randNum)
}

for _ in 0...2 {
    let rmNum = Int(arc4random_uniform(100))
    print("number to be removed : \(ar[rmNum])")
    ar.remove(at: rmNum)
}



