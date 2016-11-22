
import UIKit

extension UITableViewHeaderFooterView {
    class func identifier() -> String {
        return NSStringFromClass(self)
    }
}

extension UITableViewCell {
    class func identifier() -> String {
        return NSStringFromClass(self)
    }
}

extension UITableView {
    func registerClass<T: UITableViewCell>(cellClass: T.Type) {
        registerClass(cellClass, forCellReuseIdentifier: cellClass.identifier())
    }

    func registerClass<T: UITableViewHeaderFooterView>(cellClass: T.Type) {
        registerClass(cellClass, forHeaderFooterViewReuseIdentifier: cellClass.identifier())
    }

    func dequeueReusableCell<T: UITableViewCell>(cellClass: T.Type, forIndexPath: NSIndexPath) -> T {
        return dequeueReusableCellWithIdentifier(cellClass.identifier(), forIndexPath: forIndexPath) as! T
    }

    func dequeueReusableHeaderFooter<T: UITableViewHeaderFooterView>(cellClass: T.Type) -> T {
        return dequeueReusableHeaderFooterViewWithIdentifier(cellClass.identifier()) as! T
    }
}

