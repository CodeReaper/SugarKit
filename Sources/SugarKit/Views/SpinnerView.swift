import UIKit

public class SpinnerView: UIActivityIndicatorView {
    public init(color: UIColor = .white) {
        super.init(frame: .zero)
        self.color = color
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public func startAnimating() -> Self {
        super.startAnimating()
        return self
    }

    public func stopAnimating() -> Self {
        super.stopAnimating()
        return self
    }
}
