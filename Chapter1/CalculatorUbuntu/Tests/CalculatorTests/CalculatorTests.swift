import XCTest
@testable import Calculator

extension CalculatorTests {
    static var allTests : [(String, (CalculatorTests) -> () throws -> Void)] {
        return [
            ("testAddCheck", testAddCheck)
        ]
    }
}

class CalculatorTests: XCTestCase {
  var calc : Calculator!
  
  override func setUp() {
    super.setUp()
    calc = Calculator()
  }
  
  func testAddCheck() {
    XCTAssertEqual(calc.add(1,1),2)
  }
}
