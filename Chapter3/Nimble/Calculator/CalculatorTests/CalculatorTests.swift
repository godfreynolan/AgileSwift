//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by User on 12/4/16.
//  Copyright © 2016 example. All rights reserved.
//

import XCTest
import Nimble
@testable import Calculator


class CalculatorTests: XCTestCase {
    
    let resCalc = CalculatorModel()
    
    func testAdd() {
        expect(self.resCalc.add(1,1)) == 2
    }
    
    func testAddRange() {
        expect(self.resCalc.mul(4, 3)).to(satisfyAnyOf(beGreaterThan(10),beLessThan(20)))
    }
}
