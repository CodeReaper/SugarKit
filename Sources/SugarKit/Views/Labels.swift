import UIKit

public class Label: UILabel {
    public convenience init(style: UIFont.TextStyle = .body, attributedString string: NSAttributedString, color: UIColor = .white) {
        self.init(style: style, text: string.string, color: color)
        attributedText = string
    }

    public init(style: UIFont.TextStyle = .body, text string: String = "", color: UIColor = .white) {
        super.init(frame: .zero)
        text = string
        textColor = color
        font = UIFont.preferredFont(forTextStyle: style)
        numberOfLines = 0
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public func aligned(to alignment: NSTextAlignment) -> Self {
        textAlignment = alignment
        return self
    }
}
