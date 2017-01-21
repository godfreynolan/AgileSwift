import XCTest
@testable import chapter1

class chapter1Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(chapter1().text, "Hello, World!")
    }


    static var allTests : [(String, (chapter1Tests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
