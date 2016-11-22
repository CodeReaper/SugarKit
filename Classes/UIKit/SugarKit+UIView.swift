
import UIKit

extension UIView {
    open func add(subview view: UIView?) {
        if let view = view {
            self.addSubview(view)
        }
    }
}
