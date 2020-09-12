//
//  SelectView.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

final class SelectView: NibView {

    // MARK: - Instance Properties

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var textLabel: UILabel!

    // MARK: -

    var title: String? {
        get {
            self.titleLabel.attributedText?.string
        }

        set {
            if let newValue = newValue {
                self.titleLabel.attributedText = NSAttributedString(
                    string: newValue,
                    style: TextStyle.sfSubheadRegular.withColor(ColorStyle.steelGray500.color)
                )
            } else {
                self.titleLabel.attributedText = nil
            }
        }
    }

    var text: String? {
        get {
            self.textLabel.attributedText?.string
        }

        set {
            if let newValue = newValue {
                self.textLabel.attributedText = NSAttributedString(
                    string: newValue,
                    style: TextStyle.sfHeadlineRegular.withColor(ColorStyle.blackBlack.color)
                )
            } else {
                self.textLabel.attributedText = nil
            }
        }
    }
}
