//
//  SugarKit_iOSTests.swift
//  SugarKit-iOSTests
//
//  Created by Jakob Jensen on 22/11/2016.
//
//

import XCTest
@testable import SugarKit_iOS

class SugarKit_iOSTests: XCTestCase {
    func testUIView() {
        let superview = UIView()
        XCTAssert(superview.subviews.count == 0)

        var subview:UIView? = nil

        superview.add(subview: subview)
        XCTAssert(superview.subviews.count == 0)

        subview = UIView()
        superview.add(subview: subview)
        XCTAssert(superview.subviews.count == 1)

        XCTAssert(superview.subviews[0] == subview)
    }
}
