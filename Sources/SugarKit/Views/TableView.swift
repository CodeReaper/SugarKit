import UIKit

extension UITableView {
    public func set(datasource source: UITableViewDataSource?, delegate actor: UITableViewDelegate?) -> Self {
        dataSource = source
        delegate = actor
        return self
    }

    public func registerClass<T: UITableViewCell>(_ cellClass: T.Type) -> Self {
        register(cellClass, forCellReuseIdentifier: cellClass.identifier())
        return self
    }

    public func registerClass<T: UITableViewHeaderFooterView>(_ cellClass: T.Type) -> Self {
        register(cellClass, forHeaderFooterViewReuseIdentifier: cellClass.identifier())
        return self
    }

    public func dequeueReusableCell<T: UITableViewCell>(_ cellClass: T.Type, forIndexPath: IndexPath) -> T {
        return self.dequeueReusableCell(withIdentifier: cellClass.identifier(), for: forIndexPath) as! T // swiftlint:disable:this force_cast
    }

    public func dequeueReusableHeaderFooter<T: UITableViewHeaderFooterView>(_ cellClass: T.Type) -> T {
        return dequeueReusableHeaderFooterView(withIdentifier: cellClass.identifier()) as! T // swiftlint:disable:this force_cast
    }
}

private extension UITableViewCell {
    class func identifier() -> String {
        return NSStringFromClass(self)
    }
}

private extension UITableViewHeaderFooterView {
    class func identifier() -> String {
        return NSStringFromClass(self)
    }
}
