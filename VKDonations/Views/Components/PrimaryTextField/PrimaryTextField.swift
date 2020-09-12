//
//  PrimaryTextField.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

final class PrimaryFextField: TextField {

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

    override var placeholder: String? {
        get {
            self.attributedPlaceholder?.string
        }

        set {
            if let newValue = newValue {
                self.attributedPlaceholder = NSAttributedString(
                    string: newValue,
                    style: TextStyle.sfHeadlineRegular.withColor(ColorStyle.steelGray400.color)
                )
            } else {
                self.attributedPlaceholder = nil
            }
        }
    }

    override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize

        return CGSize(width: size.width, height: 44.0)
    }

    // MARK: - Instance Methods

    @objc private func onTextFieldEditingBegin(_ sender: UITextField) {
        self.textInputState = .focused
    }

    @objc private func onTextFieldEditingEnd(_ sender: UITextField) {
        self.textInputState = .default
    }

    // MARK: -

    private func configureAppearance() {
        self.topInset = 12.0
        self.leftInset = 12.0
        self.bottomInset = 12.0
        self.rightInset = 12.0

        self.cornerRadius = 10.0
        self.borderStyle = .none

        self.backgroundColor = .clear
        self.defaultTextAttributes = TextStyle.sfHeadlineRegular.withColor(ColorStyle.blackBlack.color).attributes()
        self.tintColor = ColorStyle.azure300.color

        self.applyState(animated: false)
    }

    private func configureTargets() {
        self.addTarget(self, action: #selector(self.onTextFieldEditingBegin(_:)), for: .editingDidBegin)
        self.addTarget(self, action: #selector(self.onTextFieldEditingEnd(_:)), for: .editingDidEnd)
    }

    private func configureBackgroundView() {
        let view = View()

        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = ColorStyle.gray040.color
        view.cornerRadius = 10.0
        view.isUserInteractionEnabled = false

        self.insertSubview(view, at: 0)

        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: self.topAnchor),
            view.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            view.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            view.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
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
        self.configureTargets()
        self.configureBackgroundView()
    }
}
