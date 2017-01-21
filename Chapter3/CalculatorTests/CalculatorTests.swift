//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by Admin on 4/20/16.
//  Copyright © 2016 riis. All rights reserved.
//

import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
    
    let resCalc = CalculatorModel(a:0,b:0)
    

    func testAdd() {
        XCTAssertEqual(resCalc.add(1, b: 1),2)
        XCTAssertEqual(resCalc.add(1, b: 2),4)
        XCTAssertEqual(resCalc.add(5, b: 4),9)
    }
    
    func testDivideByZero() {
        XCTAssertEqual(resCalc.div(0, b: 0),0)
        
    }    
    
}
