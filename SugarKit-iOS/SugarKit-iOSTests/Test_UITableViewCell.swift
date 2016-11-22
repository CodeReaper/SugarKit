
import XCTest
@testable import SugarKit_iOS

class Test_UITableViewCell: XCTestCase {
    func testUITableView() {
        let tableView = UITableView()
        tableView.registerClass(TestUITableViewCell.self)
        tableView.dataSource = self

        let cell = self.tableView(tableView, cellForRowAt: IndexPath(row: 0, section: 0))
        let asCell = cell as? TestUITableViewCell

        XCTAssertNotNil(asCell)
    }

    fileprivate class TestUITableViewCell : UITableViewCell { }
}

extension Test_UITableViewCell : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TestUITableViewCell = tableView.dequeueReusableCell(TestUITableViewCell.self, forIndexPath: indexPath)
        return cell
    }
}
