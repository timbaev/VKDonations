//
//  PlaceholderTextView.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

open class PlaceholderTextView: TextView {

    // MARK: - Instance Properties

    private var placeholderLabelConstraints = [NSLayoutConstraint]()

    // MARK: -

    public let placeholderLabel = UILabel()

    // MARK: -

    @IBInspectable open var placeholder: String? {
        didSet {
            self.placeholderLabel.text = self.placeholder
        }
    }

    @IBInspectable open var placeholderColor: UIColor = .defaultiOSPlaceholderColor {
        didSet {
            self.placeholderLabel.textColor = self.placeholderColor
        }
    }

    override open var font: UIFont! {
        didSet {
            if self.placeholderFont == nil {
                self.placeholderLabel.font = self.font
            }
        }
    }

    open var placeholderFont: UIFont? {
        didSet {
            let font = (self.placeholderFont != nil) ? self.placeholderFont : self.font

            self.placeholderLabel.font = font
        }
    }

    override open var textAlignment: NSTextAlignment {
        didSet {
            self.placeholderLabel.textAlignment = self.textAlignment
        }
    }

    override open var text: String! {
        didSet {
            self.textDidChange()
        }
    }

    override open var attributedText: NSAttributedString! {
        didSet {
            self.textDidChange()
        }
    }

    override open var textContainerInset: UIEdgeInsets {
        didSet {
            self.updateConstraintsForPlaceholderLabel()
        }
    }

    // MARK: - Initializers

    deinit {
        NotificationCenter.default.removeObserver(
            self,
            name: UITextView.textDidChangeNotification,
            object: nil
        )
    }

    // MARK: - Instance Methods

    private func updateConstraintsForPlaceholderLabel() {
        var newConstraints = NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-(\(self.textContainerInset.left + textContainer.lineFragmentPadding))-[placeholder]",
            options: [],
            metrics: nil,
            views: ["placeholder": self.placeholderLabel]
        )

        newConstraints += NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-(\(self.textContainerInset.top))-[placeholder]",
            options: [],
            metrics: nil,
            views: ["placeholder": self.placeholderLabel]
        )

        newConstraints.append(NSLayoutConstraint(
            item: self,
            attribute: .height,
            relatedBy: .greaterThanOrEqual,
            toItem: self.placeholderLabel,
            attribute: .height,
            multiplier: 1.0,
            constant: self.textContainerInset.top + self.textContainerInset.bottom
        ))

        newConstraints.append(NSLayoutConstraint(
            item: placeholderLabel,
            attribute: .width,
            relatedBy: .equal,
            toItem: self,
            attribute: .width,
            multiplier: 1.0,
            constant: -(self.textContainerInset.left
                + self.textContainerInset.right
                + textContainer.lineFragmentPadding
                * 2.0)
        ))

        self.removeConstraints(self.placeholderLabelConstraints)
        self.addConstraints(newConstraints)
        self.placeholderLabelConstraints = newConstraints
    }

    @objc private func textDidChange() {
        self.placeholderLabel.isHidden = !text.isEmpty
    }

    // MARK: - TextView

    open override func initialize() {
        super.initialize()

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.textDidChange),
            name: UITextView.textDidChangeNotification,
            object: nil
        )

        self.placeholderLabel.font = self.font
        self.placeholderLabel.textColor = self.placeholderColor
        self.placeholderLabel.textAlignment = self.textAlignment
        self.placeholderLabel.text = self.placeholder
        self.placeholderLabel.numberOfLines = 0
        self.placeholderLabel.backgroundColor = .clear
        self.placeholderLabel.translatesAutoresizingMaskIntoConstraints = false

        self.addSubview(self.placeholderLabel)

        self.updateConstraintsForPlaceholderLabel()
    }

    open override func layoutSubviews() {
        super.layoutSubviews()

        self.placeholderLabel.preferredMaxLayoutWidth = textContainer.size.width
            - textContainer.lineFragmentPadding
            * 2.0
    }
}

// MARK: - Constants

private extension UIColor {

    // MARK: - Type Properties

    static let defaultiOSPlaceholderColor: UIColor = {
        if #available(iOS 13.0, *) {
            return .systemGray3
        }

        return UIColor(red: 0.0, green: 0.0, blue: 0.0980392, alpha: 0.22)
    }()
}
