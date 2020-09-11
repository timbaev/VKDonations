//
//  Button.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 11/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

@IBDesignable public class Button: UIButton {

    // MARK: - Instance Properties

    @IBInspectable public var defaultTitleColor: UIColor? {
        didSet {
            self.applyState()
        }
    }

    @IBInspectable public var highlightedTitleColor: UIColor? {
        didSet {
            self.applyState()
        }
    }

    @IBInspectable public var selectedTitleColor: UIColor? {
        didSet {
            self.applyState()
        }
    }

    @IBInspectable public var disabledTitleColor: UIColor? {
        didSet {
            self.applyState()
        }
    }

    // MARK: -

    @IBInspectable public var defaultBackgroundColor: UIColor? {
        didSet {
            self.applyState()
        }
    }

    @IBInspectable public var highlightedBackgroundColor: UIColor? {
        didSet {
            self.applyState()
        }
    }

    @IBInspectable public var selectedBackgroundColor: UIColor? {
        didSet {
            self.applyState()
        }
    }

    @IBInspectable public var disabledBackgroundColor: UIColor? {
        didSet {
            self.applyState()
        }
    }

    // MARK: -

    @IBInspectable public var defaultBorderColor: UIColor? {
        didSet {
            self.applyState()
        }
    }

    @IBInspectable public var highlightedBorderColor: UIColor? {
        didSet {
            self.applyState()
        }
    }

    @IBInspectable public var selectedBorderColor: UIColor? {
        didSet {
            self.applyState()
        }
    }

    @IBInspectable public var disabledBorderColor: UIColor? {
        didSet {
            self.applyState()
        }
    }

    // MARK: -

    @IBInspectable public var borderWidth: CGFloat {
        get {
            return self.layer.borderWidth
        }

        set {
            self.layer.borderWidth = newValue
        }
    }

    @IBInspectable public var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }

        set {
            self.layer.cornerRadius = newValue
            self.layer.masksToBounds = (newValue > 0.0)
        }
    }

    @IBInspectable public var isSemanticInversed: Bool = false {
        didSet {
            self.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)

            self.titleLabel?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
            self.imageView?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        }
    }

    // MARK: -

    @IBInspectable public var shouldFitToTitleSize: Bool = false

    // MARK: -

    @IBInspectable public var bottomOutset: CGFloat {
        get {
            return self.touchEdgeOutset.bottom
        }

        set {
            self.touchEdgeOutset.bottom = newValue
        }
    }

    @IBInspectable public var leftOutset: CGFloat {
        get {
            return self.touchEdgeOutset.left
        }

        set {
            self.touchEdgeOutset.left = newValue
        }
    }

    @IBInspectable public var rightOutset: CGFloat {
        get {
            return self.touchEdgeOutset.right
        }

        set {
            self.touchEdgeOutset.right = newValue
        }
    }

    @IBInspectable public var topOutset: CGFloat {
        get {
            return self.touchEdgeOutset.top
        }

        set {
            self.touchEdgeOutset.top = newValue
        }
    }

    public var touchEdgeOutset: UIEdgeInsets = UIEdgeInsets.zero

    // MARK: - UIControl

    public override var isHighlighted: Bool {
        didSet {
            self.applyState()
        }
    }

    public override var isSelected: Bool {
        didSet {
            self.applyState()
        }
    }

    public override var isEnabled: Bool {
        didSet {
            self.applyState()
        }
    }

    public override var intrinsicContentSize: CGSize {
        if self.shouldFitToTitleSize, let titleLabel = self.titleLabel {
            let size = CGSize(width: titleLabel.preferredMaxLayoutWidth, height: .greatestFiniteMagnitude)

            return titleLabel.sizeThatFits(size)
        } else {
            return super.intrinsicContentSize
        }
    }

    // MARK: - Initializers

    public override init(frame: CGRect = .zero) {
        super.init(frame: frame)

        self.titleLabel?.textAlignment = .center

        self.initialize()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        self.titleLabel?.textAlignment = .center

        self.initialize()
    }

    // MARK: - Instance Methods

    /// Override this method to setup initial state after initialization (e.g. add subviews, setup constraints and etc).
    /// Helps not write initializers in the subclasses.
    /// Default implementation do nothing.
    open func initialize() { }

    // MARK: -

    public func applyState() {
        if self.isEnabled {
            if self.isHighlighted {
                UIView.transition(with: self, duration: 0.05, options: .transitionOptions, animations: {
                    self.setTitleColor(self.highlightedTitleColor ?? self.defaultTitleColor, for: .normal)
                    self.setTitleColor(self.highlightedTitleColor ?? self.defaultTitleColor, for: .highlighted)

                    self.backgroundColor = self.highlightedBackgroundColor ?? self.defaultBackgroundColor
                    self.tintColor = self.highlightedTitleColor ?? self.defaultTitleColor

                    self.layer.borderColor = (self.highlightedBorderColor ?? self.defaultBorderColor)?.cgColor
                })
            } else if self.isSelected {
                UIView.transition(with: self, duration: 0.05, options: .transitionOptions, animations: {
                    self.setTitleColor(self.selectedTitleColor ?? self.defaultTitleColor, for: .normal)
                    self.setTitleColor(self.selectedTitleColor ?? self.defaultTitleColor, for: .selected)

                    self.backgroundColor = self.selectedBackgroundColor ?? self.defaultBackgroundColor
                    self.tintColor = self.selectedTitleColor ?? self.defaultTitleColor

                    self.layer.borderColor = (self.selectedBorderColor ?? self.defaultBorderColor)?.cgColor
                })
            } else {
                UIView.transition(with: self, duration: 0.25, options: .transitionOptions, animations: {
                    self.setTitleColor(self.defaultTitleColor, for: .normal)

                    self.backgroundColor = self.defaultBackgroundColor
                    self.tintColor = self.defaultTitleColor

                    self.layer.borderColor = self.defaultBorderColor?.cgColor
                })
            }
        } else {
            UIView.transition(with: self, duration: 0.25, options: .transitionOptions, animations: {
                self.setTitleColor(self.disabledTitleColor ?? self.defaultTitleColor, for: .normal)

                self.backgroundColor = self.disabledBackgroundColor ?? self.defaultBackgroundColor
                self.tintColor = self.disabledTitleColor ?? self.defaultTitleColor

                self.layer.borderColor = (self.disabledBorderColor ?? self.defaultBorderColor)?.cgColor
            })
        }
    }

    // MARK: - UIControl

    public override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let rect = CGRect(
            x: self.bounds.origin.x - self.touchEdgeOutset.left,
            y: self.bounds.origin.y - self.touchEdgeOutset.top,
            width: self.bounds.width + self.touchEdgeOutset.left + self.touchEdgeOutset.right,
            height: self.bounds.height + self.touchEdgeOutset.top + self.touchEdgeOutset.bottom
        )

        return rect.contains(point)
    }

    public override func layoutSubviews() {
        super.layoutSubviews()

        if self.shouldFitToTitleSize {
            self.titleLabel?.preferredMaxLayoutWidth = self.frame.size.width
        }
    }
}

// MARK: - Constants

extension UIView.AnimationOptions {

    // MARK: - Type Properties

    static let transitionOptions: UIView.AnimationOptions = [
        .transitionCrossDissolve,
        .allowAnimatedContent,
        .allowUserInteraction
    ]
}
