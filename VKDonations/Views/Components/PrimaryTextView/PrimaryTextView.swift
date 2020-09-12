//
//  PrimaryTextView.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

final class PrimaryTextView: PlaceholderTextView {

    // MARK: - Nested Types

    /// Состояние текстового поля.
    private enum TextInputState {

        // MARK: - Enumeration Cases

        case `default`
        case focused
    }

    // MARK: - Instance Properties

    private var textInputState: TextInputState = .default {
        didSet {
            self.applyState()
        }
    }

    // MARK: -

    var notificationCenter: NotificationCenter {
        .default
    }

    // MARK: -

    override var placeholder: String? {
        get {
            self.placeholderLabel.attributedText?.string
        }

        set {
            if let newValue = newValue {
                self.placeholderLabel.attributedText = NSAttributedString(
                    string: newValue,
                    style: TextStyle.sfHeadlineRegular.withColor(ColorStyle.steelGray400.color)
                )
            } else {
                self.placeholderLabel.attributedText = nil
            }
        }
    }

    override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize

        return CGSize(width: size.width, height: 44.0)
    }

    // MARK: - Initializers

    deinit {
        self.notificationCenter.removeObserver(self)
    }

    // MARK: - Instance Methods

    @objc private func onTextViewEditingBegin(_ notification: Notification) {
        self.textInputState = .focused
    }

    @objc private func onTextViewEditingEnd(_ notification: Notification) {
        self.textInputState = .default
    }

    // MARK: -

    private func observe(_ name: NSNotification.Name, _ selector: Selector) {
        self.notificationCenter.addObserver(self, selector: selector, name: name, object: self)
    }

    // MARK: -

    private func configureAppearance() {
        self.cornerRadius = 10.0

        self.backgroundColor = ColorStyle.gray040.color
        self.typingAttributes = TextStyle.sfHeadlineRegular.withColor(ColorStyle.blackBlack.color).attributes()
        self.tintColor = ColorStyle.azure300.color

        self.applyState(animated: false)
    }

    private func configureObserverNotifications() {
        self.observe(UITextView.textDidBeginEditingNotification, #selector(self.onTextViewEditingBegin(_:)))
        self.observe(UITextView.textDidEndEditingNotification, #selector(self.onTextViewEditingEnd(_:)))
    }

    private func configureSelf() {
        self.isScrollEnabled = false
    }

    // MARK: -

    private func applyState(animated: Bool = true) {
        UIView.animate(withDuration: animated ? 0.25 : 0.0, animations: {
            switch self.textInputState {
            case .default:
                self.borderWidth = 0.5
                self.borderColor = ColorStyle.blackAlpha12.color

            case .focused:
                self.borderWidth = 1.0
                self.borderColor = ColorStyle.azure300.color
            }
        })
    }

    // MARK: - TextField

    override func initialize() {
        super.initialize()

        self.configureAppearance()
        self.configureObserverNotifications()
        self.configureSelf()
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        self.textContainerInset = UIEdgeInsets(equilateral: 12.0)
    }
}
