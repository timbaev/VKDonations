//
//  BannerControl.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

@IBDesignable final class BannerControl: NibControl {

    // MARK: - Instance Properties

    @IBOutlet private weak var bannerView: View!
    @IBOutlet private weak var iconImageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var subtitleLabel: UILabel!

    // MARK: -

    @IBInspectable var icon: UIImage? {
        get {
            self.iconImageView.image
        }

        set {
            self.iconImageView.image = newValue
        }
    }

    @IBInspectable var title: String? {
        get {
            self.titleLabel.attributedText?.string
        }

        set {
            if let newValue = newValue {
                self.titleLabel.attributedText = NSAttributedString(
                    string: newValue,
                    style: TextStyle.sfHeadlineSemibold.withColor(ColorStyle.blackBlack.color)
                )
            } else {
                self.titleLabel.attributedText = nil
            }
        }
    }

    @IBInspectable var subtitle: String? {
        get {
            self.subtitleLabel.attributedText?.string
        }

        set {
            if let newValue = newValue {
                self.subtitleLabel.attributedText = NSAttributedString(
                    string: newValue,
                    style: TextStyle.sfCaption1Regular.withColor(ColorStyle.steelGray500.color)
                )
            } else {
                self.subtitleLabel.attributedText = nil
            }
        }
    }
}
