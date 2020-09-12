//
//  TextView.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

@IBDesignable open class TextView: UITextView {

    // MARK: - Instance Properties

    @IBInspectable public var lineFragmentPadding: CGFloat = 0

    @IBInspectable public var maximumNumberOfLines: Int = 0 {
        didSet {
            self.textContainer.maximumNumberOfLines = self.maximumNumberOfLines

            if self.maximumNumberOfLines > 0 {
                self.textContainer.lineBreakMode = .byTruncatingTail
            } else {
                self.textContainer.lineBreakMode = .byWordWrapping
            }

            self.invalidateIntrinsicContentSize()
        }
    }

    @IBInspectable public var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = self.cornerRadius
            self.layer.masksToBounds = (self.cornerRadius > 0)
        }
    }

    @IBInspectable public var borderColor: UIColor? {
        didSet {
            self.layer.borderColor = self.borderColor?.cgColor
        }
    }

    @IBInspectable public var borderWidth: CGFloat {
        get {
            self.layer.borderWidth
        }

        set {
            self.layer.borderWidth = newValue
        }
    }

    // MARK: -

    public var touchEdgeOutset: UIEdgeInsets = UIEdgeInsets.zero

    // MARK: - Initializers

    public override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)

        self.initialize()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)

        self.initialize()
    }

    // MARK: - Instance Methods

    /// Override this method to setup initial state after initialization (e.g. add subviews, setup constraints and etc).
    /// Helps not write initializers in the subclasses.
    /// Default implementation do nothing.
    open func initialize() { }

    // MARK: - UIControl

    public override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let rect = CGRect(x: self.bounds.origin.x - self.touchEdgeOutset.left,
                          y: self.bounds.origin.y - self.touchEdgeOutset.top,
                          width: self.bounds.width + self.touchEdgeOutset.left + self.touchEdgeOutset.right,
                          height: self.bounds.height + self.touchEdgeOutset.top + self.touchEdgeOutset.bottom)

        return rect.contains(point)
    }

    // MARK: - UITextView

    @discardableResult
    public override func becomeFirstResponder() -> Bool {
        guard self.isEditable else {
            return false
        }

        return super.becomeFirstResponder()
    }

    public override func layoutSubviews() {
        super.layoutSubviews()

        self.textContainerInset = .zero
        self.textContainer.lineFragmentPadding = self.lineFragmentPadding
    }
}
