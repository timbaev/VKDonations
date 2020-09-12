//
//  PrimaryButton.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 11/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

final class PrimaryButton: Button {

    // MARK: - Nested Types

    enum Style {

        // MARK: - Enumeration Cases

        case small
        case medium
        case large

        // MARK: - Instance Properties

        var height: CGFloat {
            switch self {
            case .small:
                return 30.0

            case .medium:
                return 36.0

            case .large:
                return 44.0
            }
        }

        var textStyle: TextStyle {
            switch self {
            case .small:
                return .sfSubheadMedium

            case .medium:
                return .sfTextMedium

            case .large:
                return .sfTitle3Medium
            }
        }
    }

    // MARK: - Instance Properties

    var style: Style = .medium {
        didSet {
            self.setNeedsLayout()
        }
    }

    // MARK: -

    override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize

        return CGSize(
            width: size.width + self.titleEdgeInsets.left + self.titleEdgeInsets.right,
            height: self.style.height
        )
    }

    // MARK: - Instance Methods

    private func configureAppearance() {
        self.defaultBackgroundColor = ColorStyle.azureA400.color
        self.disabledBackgroundColor = ColorStyle.azureA400.withAlpha(0.4).color
        self.highlightedBackgroundColor = ColorStyle.azureA400.withAlpha(0.4).color

        self.backgroundColor = ColorStyle.azureA400.color

        self.layer.cornerRadius = 10.0
        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
    }

    // MARK: - Button

    override func initialize() {
        super.initialize()

        self.configureAppearance()
    }

    override func setTitle(_ title: String?, for state: UIControl.State) {
        if let title = title {
            self.setAttributedTitle(
                NSAttributedString(string: title, style: self.style.textStyle.withColor(ColorStyle.whiteWhite.color)),
                for: state
            )
        } else {
            super.setTitle(title, for: state)
        }
    }

    override func title(for state: UIControl.State) -> String? {
        self.attributedTitle(for: state)?.string
    }
}
