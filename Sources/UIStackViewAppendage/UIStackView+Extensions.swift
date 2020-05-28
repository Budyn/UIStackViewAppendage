import UIKit

extension UIStackView {

    @discardableResult
    public func insert(_ arrangedSubviews: [UIView]) -> Self {
        arrangedSubviews.forEach(addArrangedSubview(_:))
        return self
    }

    @discardableResult
    public func replace(_ arrangedSubviews: [UIView]) -> Self {
        removeAllArrangedSubviews()
        arrangedSubviews.forEach(addArrangedSubview(_:))
        return self
    }

    @discardableResult
    public func configure(
        axis: NSLayoutConstraint.Axis? = nil,
        spacing: CGFloat? = nil,
        alignment: UIStackView.Alignment? = nil,
        distribution: UIStackView.Distribution? = nil
    ) -> Self {
        axis.map { self.axis = $0 }
        spacing.map { self.spacing = $0 }
        alignment.map { self.alignment = $0 }
        distribution.map { self.distribution = $0 }
        return self
    }

    @discardableResult
    public func apply(layoutMargins: UIEdgeInsets) -> Self {
        self.isLayoutMarginsRelativeArrangement = true
        self.layoutMargins = layoutMargins
        return self
    }

    private func removeAllArrangedSubviews() {
        arrangedSubviews.forEach {
            removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
    }
}
