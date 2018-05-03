//: Playground - noun: a place where people can play

import UIKit

func functionWithDefault(input: String = "String"){
    //parameter werte immer konstante also input = ddede geht nicht
    // was geht var input = input
    
}

func functionWithDefault2(input: String? = nil){}

//functions as variables - variadic functions
//https://medium.com/@abhimuralidharan/variadic-functions-swift-54ce99a55c1d
func addNumbers(_ numbers: Int...)  -> Int {
    var result = 0
    for number in numbers {
        result += number
    }
    return result
}

addNumbers(1,2,3,4,5)


//MARK - defer

var fridgeIsOpen = false
var fridgeContent = ["Milk", "Brokkoli", "Eier", "Wasser"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    
    // defer statement will be executed before the end of the function, loop...
    defer {
        print("defer")
        fridgeIsOpen = false
    }
    
    print("was gehts")
    return fridgeContent.contains(food)
}

fridgeContains("Eier")
print("offen \(fridgeIsOpen)")

//MARK - nested function

func returnFifteen(startValue: Int) -> Int {
    var start = startValue
    
    func addNumber(){
        let diff = 15 - start
        start += diff
    }
    
    func subsctractNumber(){
        let diff = start - 15
        start -= diff
    }
    
    start >= 15 ? addNumber() : subsctractNumber()
    return start
}


returnFifteen(startValue: 23)



//MARK - function as parameters

typealias funcType = (Int, Int) -> Int

func addTwoInts(a: Int, b : Int) -> Int{
    return a + b
}

func multiTwoInt(a: Int, b:Int) -> Int {
    return a * b
}

func isGreater(a: Int, b : Int) -> Bool {
    return a > b
}

var mathFunction = addTwoInts

mathFunction(2, 3)

func printMathFunction(mathFunc: funcType, a: Int, b: Int){
    let result = mathFunc(a,b)
    print(result)
}

printMathFunction(mathFunc: addTwoInts, a: 1, b: 2)

//you can also return array with functions and return functions

