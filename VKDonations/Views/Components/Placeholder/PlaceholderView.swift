//
//  PlaceholderView.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 11/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

@IBDesignable final class PlaceholderView: NibView {

    // MARK: - Instance Properties

    @IBOutlet private weak var textLabel: UILabel!
    @IBOutlet private weak var button: PrimaryButton!

    // MARK: -

    @IBInspectable var text: String? {
        get {
            self.textLabel.attributedText?.string
        }

        set {
            if let newValue = newValue {
                self.textLabel.attributedText = NSAttributedString(
                    string: newValue,
                    style: TextStyle.sfHeadlineRegular.withColor(ColorStyle.steelGray400.color)
                )
            } else {
                self.textLabel.attributedText = nil
            }
        }
    }

    @IBInspectable var buttonTitle: String? {
        get {
            self.button.title(for: .normal)
        }

        set {
            self.button.setTitle(newValue, for: .normal)
        }
    }

    // MARK: -

    var onButtonTapped: (() -> Void)?

    // MARK: - Instance Methods

    @IBAction private func onButtonTouchUpInside(_ sender: PrimaryButton) {
        self.onButtonTapped?()
    }

    // MARK: -

    private func configureAppearance() {
        self.textLabel.attributedText = nil
        self.button.setTitle(nil, for: .normal)
    }

    // MARK: - NibView

    override func initialize() {
        super.initialize()

        self.configureAppearance()
    }
}
