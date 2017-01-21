//
//  CalculatorModel.swift
//  Calculator
//
//  Created by Admin on 4/16/16.
//  Copyright © 2016 riis. All rights reserved.
//

import Foundation

class CalculatorModel {
    
    var a: Int
    var b: Int
    
    init(a:Int, b:Int){
        self.a = a
        self.b = b
    }
        
    func add(a:Int, b:Int) -> Int {
        return a + b
    }
    
    func sub(a:Int, b:Int) -> Int {
        return a - b
    }
    
    func mul(a:Int, b:Int) -> Int {
        return a * b
    }
    
    func div(a:Int, b:Int) -> Int {
        
        guard b != 0 else {
            return 0
        }
        return a / b
    }
    
}