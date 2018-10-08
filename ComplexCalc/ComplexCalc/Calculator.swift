//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func add(_ args: [Int]) -> Int {
        var result = 0
        for i in 0...args.count - 1 {
            result += args[i]
        }
        return result
    }
    
    func add(lhs: (x: Int, y: Int), rhs: (x: Int, y:Int)) -> (Int, Int) {
        return (lhs.x + rhs.x, lhs.y + rhs.y)
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func subtract(lhs: (x: Int, y: Int), rhs: (x: Int, y: Int)) -> (Int, Int) {
        return (lhs.x - rhs.x, lhs.y - rhs.y)
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func multiply(_ args: [Int]) -> Int {
        var result = 1
        for i in 0...args.count - 1 {
            result *= args[i]
        }
        return result
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    func count(_ args: [Int]) -> Int {
        return args.count
    }
    
    func avg(_ args: [Int]) -> Int {
        var sum = 0
        for i in 0...args.count - 1 {
            sum += args[i]
        }
        return sum / args.count
    }
    
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var result = op(beg, args[0])
        for i in 1...args.count - 1 {
            result += op(result, args[i])
        }
        return result
    }
    
    func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! + rhs["x"]!, "y": lhs["y"]! + rhs["y"]!]
    }
    
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! + rhs["x"]!, "y": lhs["y"]! + rhs["y"]!]
    }
}
