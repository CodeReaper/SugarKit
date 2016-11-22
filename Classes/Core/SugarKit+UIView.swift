
import UIKit

extension UIView {
    func add(subview view: UIView?) {
        if let view = view {
            self.addSubview(view)
        }
    }
}
