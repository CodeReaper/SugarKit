
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
        register(cellClass, forCellReuseIdentifier: cellClass.identifier())
    }

    func registerClass<T: UITableViewHeaderFooterView>(cellClass: T.Type) {
        register(cellClass, forHeaderFooterViewReuseIdentifier: cellClass.identifier())
    }

    func dequeueReusableCell<T: UITableViewCell>(cellClass: T.Type, forIndexPath: NSIndexPath) -> T {
        return dequeueReusableCell(withIdentifier: cellClass.identifier(), for: forIndexPath as IndexPath) as! T
    }

    func dequeueReusableHeaderFooter<T: UITableViewHeaderFooterView>(cellClass: T.Type) -> T {
        return dequeueReusableHeaderFooterView(withIdentifier: cellClass.identifier()) as! T
    }
}

