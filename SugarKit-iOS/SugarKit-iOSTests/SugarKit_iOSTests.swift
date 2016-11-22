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

    func testUINavigationController() {
        let navigationController = UINavigationController()
        XCTAssert(navigationController.viewControllers.count == 0)

        let numberOfViewControllers = 9

        for _ in 1...numberOfViewControllers {
            let viewController = UIViewController()
            navigationController.pushViewController(viewController, animated: false)
        }
        XCTAssert(navigationController.viewControllers.count == numberOfViewControllers)

        navigationController.pop(animated: false)
        XCTAssert(navigationController.viewControllers.count == numberOfViewControllers - 1)

        navigationController.popToRoot(animated: false)
        XCTAssert(navigationController.viewControllers.count == 1)
    }
}
