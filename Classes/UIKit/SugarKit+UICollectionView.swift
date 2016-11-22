
import UIKit

extension UICollectionViewCell {
    class func identifier() -> String {
        return NSStringFromClass(self)
    }
}

extension UICollectionView {
    func registerClass<T: UICollectionViewCell>(_ cellClass: T.Type) {
        register(cellClass, forCellWithReuseIdentifier: cellClass.identifier())
    }

    func dequeueReusableCell<T: UICollectionViewCell>(_ cellClass: T.Type, forIndexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: cellClass.identifier(), for: forIndexPath) as! T
    }
}
