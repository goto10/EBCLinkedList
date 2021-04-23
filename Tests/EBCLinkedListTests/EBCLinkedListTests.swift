import XCTest
@testable import EBCLinkedList

final class EBCLinkedListTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        
        let ll = EBCLinkedList<Int>()
        
        ll.append(5)
        ll.append(6)
        ll.append(7)
        ll.append(8)
        
        XCTAssertEqual(ll.count, 4)
        XCTAssertEqual(ll.removeLast(), 8)
        XCTAssertEqual(ll.removeLast(), 7)
        XCTAssertEqual(ll.count, 2)
        
        ll.removeAll()
        
        XCTAssertEqual(ll.isEmpty, true)
        XCTAssertEqual(ll.removeLast(), nil)
        
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
