import XCTest
@testable import EBCLinkedList

final class EBCLinkedListTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        
        var ll = EBCLinkedList<Int>()
        
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
    
    func testIterator() {
        
        var ll = EBCLinkedList<Int>()
        
        ll.append(2)
        ll.append(3)
        ll.append(4)
        ll.append(5)
        
        var index = 0
        for i in ll {
            XCTAssertEqual(i, index + 2)
            index += 1
        }
        
        XCTAssertEqual(ll.count, 4)
        
    }

    static var allTests = [
        ("testExample", testExample),
        ("testIterator", testIterator),
    ]
}
