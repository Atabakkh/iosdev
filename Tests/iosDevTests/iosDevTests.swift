import XCTest
@testable import iosDev

class iosDevTests: XCTestCase {
    func testExample() {
        XCTAssertEqual("GP dev environment".greetMe(), "Welcome to GP dev environment")
    }


    static var allTests : [(String, (iosDevTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
