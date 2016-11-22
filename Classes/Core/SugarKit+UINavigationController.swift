
import UIKit

extension UINavigationController {
    func pop(animated: Bool) {
        _ = self.popViewController(animated: animated)
    }

    func popToRoot(animated: Bool) {
        _ = self.popToRootViewController(animated: animated)
    }
}
