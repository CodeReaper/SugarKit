
import XCTest
@testable import SugarKit_iOS

class Test_UIView: XCTestCase {
    func testUIView() {
        let superview = UIView()
        XCTAssertEqual(superview.subviews.count, 0)

        var subview:UIView? = nil

        superview.add(subview: subview)
        XCTAssertEqual(superview.subviews.count, 0)

        subview = UIView()
        superview.add(subview: subview)
        XCTAssertEqual(superview.subviews.count, 1)

        XCTAssertEqual(superview.subviews[0], subview)
    }
}
