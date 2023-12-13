import XCTest
@testable import LogManager

final class LogManagerTests: XCTestCase {
    func testLogManager() throws {
        let manager:Debug? = Debug()
        XCTAssert(manager != nil)
    }
}
