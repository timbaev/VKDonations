//
//  TextField.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

@IBDesignable public class TextField: UITextField {

    // MARK: - Instance Properties

    @IBInspectable public var leftInset: CGFloat = 0.0 {
        didSet {
            self.setNeedsLayout()
        }
    }

    @IBInspectable public var rightInset: CGFloat = 0.0 {
        didSet {
            self.setNeedsLayout()
        }
    }

    @IBInspectable public var topInset: CGFloat = 0.0 {
        didSet {
            self.setNeedsLayout()
        }
    }

    @IBInspectable public var bottomInset: CGFloat = 0.0 {
        didSet {
            self.setNeedsLayout()
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

    public var isTextEmpty: Bool {
        return self.text?.isEmpty ?? true
    }

    // MARK: - Initializers

    public override init(frame: CGRect) {
        super.init(frame: frame)

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

    // MARK: - UITextField

    public override func textRect(forBounds bounds: CGRect) -> CGRect {
        let leftInset = (self.leftView?.frame.width ?? 0.0) + self.leftInset
        let rightInset = (self.rightView?.frame.width ?? 0.0) + self.rightInset

        return CGRect(x: leftInset,
                      y: self.topInset,
                      width: bounds.width - leftInset - rightInset,
                      height: bounds.height - self.topInset - self.bottomInset)
    }

    public override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return self.textRect(forBounds: bounds)
    }
}
