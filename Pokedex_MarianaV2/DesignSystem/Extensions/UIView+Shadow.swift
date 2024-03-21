import UIKit

extension UIView {
    func addShadow(
        backgroundColor: UIColor = .white,
        cornerRadius: CGFloat = 5,
        shadowOpacity: Float = 1,
        shadowRadius: CGFloat = 2,
        shadowColor: UIColor = .lightGray,
        shadowOffset: CGSize = CGSize(width: 1, height: 1)
    ) {
        self.backgroundColor = backgroundColor
        self.layer.masksToBounds = false
        self.layer.cornerRadius = cornerRadius
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = shadowOffset
    }
}
