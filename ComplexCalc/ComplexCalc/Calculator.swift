//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here

// lhs, rhs param names
class Calculator {
    
    // Add 2 integers
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    // Add int arrays
    func add(_ nums: [Int]) -> Int {
        var sum : Int = 0
        for n in nums {
            sum += n
        }
        return sum
    }
    
    // Add tuples
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    // Add keyval dictionaries
    func add(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        return ["x": lhs["x"]! + rhs["x"]!, "y": lhs["y"]! + rhs["y"]!]
    }
    
    // subtract numbers
    func subtract(lhs: Int, rhs: Int) -> Int{
        return lhs - rhs
    }
    
    // subtract keyval dictionaries
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! - rhs["x"]!, "y": lhs["y"]! - rhs["y"]!]
    }
    
    // subtract tuples
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    // divide numbers
    func divide(lhs: Int, rhs: Int) -> Int{
        return lhs / rhs
    }
    
    // multiply numbers
    func multiply(lhs: Int, rhs: Int) -> Int{
        return lhs * rhs
    }
    
    // multiply array/list
    func multiply(_ nums: [Int]) -> Int {
        if nums.count < 1 {
            return 0
        }
        var total: Int = 1
        for num in nums {
            total *= num
        }
        return total
    }
    
    // operation on integers
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    
    // operation on array & int
    public func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var sum: Int = beg
        
        for x in args{
            sum = op(sum, x)
        }
        return sum
    }
    
    func count(_ nums: [Int]) -> Int {
        return nums.count
    }
    
    func avg(_ nums: [Int]) -> Int {
        if count(nums) > 0 {
            return add(nums)/count(nums)
        }
        return 0
    }
}
