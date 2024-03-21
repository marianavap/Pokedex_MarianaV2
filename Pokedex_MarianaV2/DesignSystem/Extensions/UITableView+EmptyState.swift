import UIKit

extension UITableView {
    func setEmptyMessage(_ message: String = "Gotta catch them! 🔎") {
        let messageLabel = UILabel(
            frame: CGRect(x: .zero, y: .zero, width: self.bounds.size.width, height: self.bounds.size.height)
        )
        messageLabel.text = message
        messageLabel.textColor = .gray
        messageLabel.numberOfLines = 0
        messageLabel.textAlignment = .center
        messageLabel.font = UIFont.itemTitle
        messageLabel.sizeToFit()

        self.backgroundView = messageLabel
        self.separatorStyle = .none
    }

    func restore() {
        self.backgroundView = nil
    }
}
