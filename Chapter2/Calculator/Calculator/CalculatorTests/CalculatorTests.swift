//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by User on 12/4/16.
//  Copyright © 2016 example. All rights reserved.
//

import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
    
    var resCalc : CalculatorModel!
    
    override func setUp() {
        super.setUp()
        resCalc = CalculatorModel()
    }
    
    func testAdd() {
        XCTAssertEqual(resCalc.add(1, 1),2)
        XCTAssertEqual(resCalc.add(1, 2),3)
        XCTAssertEqual(resCalc.add(5, 4),9)
    }
    
}
