//
//  View.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

@IBDesignable public class View: UIView {

    // MARK: - Instance Properties

    @IBInspectable public var topLeft: Bool = true
    @IBInspectable public var topRight: Bool = true
    @IBInspectable public var bottomLeft: Bool = true
    @IBInspectable public var bottomRight: Bool = true

    @IBInspectable public var borderWidth: CGFloat {
        get {
            return self.layer.borderWidth
        }

        set {
            self.layer.borderWidth = newValue
        }
    }

    @IBInspectable public var borderColor: UIColor? {
        didSet {
            self.layer.borderColor = self.borderColor?.cgColor
        }
    }

    @IBInspectable public var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = self.cornerRadius
        }
    }

    // MARK: - UIView

    public override func layoutSubviews() {
        super.layoutSubviews()

        var roundingCorners = CACornerMask()

        if self.topLeft {
            roundingCorners.insert(.layerMinXMinYCorner)
        }

        if self.topRight {
            roundingCorners.insert(.layerMaxXMinYCorner)
        }

        if self.bottomLeft {
            roundingCorners.insert(.layerMinXMaxYCorner)
        }

        if self.bottomRight {
            roundingCorners.insert(.layerMaxXMaxYCorner)
        }

        self.layer.maskedCorners = roundingCorners

        self.clipsToBounds = true
    }

    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()

        self.setNeedsLayout()
    }
}

