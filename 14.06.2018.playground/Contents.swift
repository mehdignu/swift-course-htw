
//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct coins {
    var currencyFactor: Double
    subscript (numberOfCoins: Int) -> Double {
        return currencyFactor * Double(numberOfCoins)
    }
}

var dollar = coins(currencyFactor: 1.948)
dollar[30]

struct Matrix {
    let rows: Int
    let columns: Int
    var grid: [Double]
    
    init(withRows rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexWithValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get{
            assert(indexWithValid(row: row, column: column), "Index is out of range")
            return grid[(row * columns) + column]
        }
        
        set {
            assert(indexWithValid(row: row, column: column), "index is out of range")
            grid[(row * column) + column] = newValue
        }
    }
}


var matrix = Matrix(withRows: 2, columns: 2)

let result = matrix[0,0]
matrix[0,0] = 23.4
matrix[1,0] = 42.0
matrix[1,1] = 4.0

matrix.grid
