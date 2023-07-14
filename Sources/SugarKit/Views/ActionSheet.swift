import Foundation
import UIKit

public typealias ActionSheetAction = (UIAlertController) -> Void

public enum ActionSheetOption {
    case title(text: String)
    case message(text: String)
    case textField((UITextField) -> Void)
    case style(preference: UIAlertController.Style)
    case cancel(text: String, action: ActionSheetAction?)
    case danger(text: String, action: ActionSheetAction)
    case button(text: String, action: ActionSheetAction)
    case source(view: UIView, rect: CGRect)
}

extension UIAlertController {
    public static func build(with options: [ActionSheetOption]) -> UIAlertController {
        let title = options.compactMap {
            switch $0 {
            case .title(let text): return text
            default: return nil
            }
        }.first ?? ""

        let message = options.compactMap {
            switch $0 {
            case .message(let text): return text
            default: return nil
            }
        }.first ?? ""

        let style = options.compactMap {
            switch $0 {
            case .style(let preference): return preference
            default: return nil
            }
        }.first ?? UIAlertController.Style.actionSheet

        let actionSheet = UIAlertController(title: title, message: message, preferredStyle: style)
        for option in options {
            switch option {
            case let .danger(text, action):
                actionSheet.addAction(UIAlertAction(title: text, style: .destructive, handler: { _ in action(actionSheet) }))
            case let .cancel(text, action):
                actionSheet.addAction(UIAlertAction(title: text, style: .cancel, handler: { _ in action?(actionSheet) }))
            case let .button(text, action):
                actionSheet.addAction(UIAlertAction(title: text, style: .default, handler: { _ in action(actionSheet) }))
            case let .source(view, rect):
                actionSheet.popoverPresentationController?.sourceView = view
                actionSheet.popoverPresentationController?.sourceRect = rect
            case let .textField(block):
                actionSheet.addTextField { field in block(field) }
            case .title, .message, .style:
                break
            }
        }
        return actionSheet
    }

    public func present(in controller: UIViewController, animated: Bool) {
        controller.present(self, animated: animated)
    }
}
