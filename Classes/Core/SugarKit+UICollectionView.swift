
import UIKit

extension UICollectionViewCell {
    class func identifier() -> String {
        return NSStringFromClass(self)
    }
}

extension UICollectionView {
    func registerClass(cellClass: AnyClass?) {
        if let cellClass = cellClass as? UICollectionViewCell.Type {
            registerClass(cellClass, forCellWithReuseIdentifier: cellClass.identifier())
        }
    }
}
