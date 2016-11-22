
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
    func registerClass<T: UITableViewCell>(_ cellClass: T.Type) {
        register(cellClass, forCellReuseIdentifier: cellClass.identifier())
    }

    func registerClass<T: UITableViewHeaderFooterView>(_ cellClass: T.Type) {
        register(cellClass, forHeaderFooterViewReuseIdentifier: cellClass.identifier())
    }

    func dequeueReusableCell<T: UITableViewCell>(_ cellClass: T.Type, forIndexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: cellClass.identifier(), for: forIndexPath) as! T
    }

    func dequeueReusableHeaderFooter<T: UITableViewHeaderFooterView>(_ cellClass: T.Type) -> T {
        return dequeueReusableHeaderFooterView(withIdentifier: cellClass.identifier()) as! T
    }
}

