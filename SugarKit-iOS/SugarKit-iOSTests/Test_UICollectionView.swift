
import XCTest
@testable import SugarKit_iOS

class Test_UICollectionView: XCTestCase {
    func testUICollectionView() {
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.registerClass(TestUICollectionViewCell.self)
        collectionView.dataSource = self

        let cell = self.collectionView(collectionView, cellForItemAt: IndexPath(row: 0, section: 0))
        let asCell = cell as? TestUICollectionViewCell

        XCTAssertNotNil(asCell)
    }

    fileprivate class TestUICollectionViewCell : UICollectionViewCell { }
}

extension Test_UICollectionView : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:TestUICollectionViewCell = collectionView.dequeueReusableCell(TestUICollectionViewCell.self, forIndexPath: indexPath)
        return cell
    }
}
