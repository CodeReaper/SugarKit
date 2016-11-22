
import XCTest
@testable import SugarKit_iOS

class Test_UINavigationController: XCTestCase {
    func testUINavigationController() {
        let navigationController = UINavigationController()
        XCTAssert(navigationController.viewControllers.count == 0)

        let numberOfViewControllers = 9

        for _ in 1...numberOfViewControllers {
            let viewController = UIViewController()
            navigationController.pushViewController(viewController, animated: false)
        }
        XCTAssertEqual(navigationController.viewControllers.count, numberOfViewControllers)

        navigationController.pop(animated: false)
        XCTAssertEqual(navigationController.viewControllers.count, numberOfViewControllers - 1)

        navigationController.popToRoot(animated: false)
        XCTAssertEqual(navigationController.viewControllers.count, 1)
    }
}
