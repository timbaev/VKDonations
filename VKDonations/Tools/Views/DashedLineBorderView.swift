//
//  DashedLineView.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

class DashedLineBorderView: View {

    // MARK: - Instance Properties

    private var dashedLineLayer: CALayer?

    // MARK: -

    @IBInspectable var strokeColor: UIColor = .blue {
        didSet {
            self.setNeedsLayout()
        }
    }

    @IBInspectable var lineWidth: CGFloat = 1.0 {
        didSet {
            self.setNeedsLayout()
        }
    }

    @IBInspectable var rawLineDashPattern: String = String() {
        didSet {
            let numbers = self.rawLineDashPattern.components(separatedBy: ",").compactMap { Int($0) }

            self.lineDashPattern = numbers as [NSNumber]
        }
    }

    // MARK: -

    var lineDashPattern: [NSNumber] = [1, 2] {
        didSet {
            self.setNeedsLayout()
        }
    }

    // MARK: - UIView

    override func layoutSubviews() {
        super.layoutSubviews()

        self.dashedLineLayer?.removeFromSuperlayer()

        let dashedLineLayer = CAShapeLayer()

        dashedLineLayer.path = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.cornerRadius).cgPath
        dashedLineLayer.strokeColor = self.strokeColor.cgColor
        dashedLineLayer.lineDashPattern = self.lineDashPattern
        dashedLineLayer.frame = self.bounds
        dashedLineLayer.fillColor = nil

        self.layer.addSublayer(dashedLineLayer)

        self.dashedLineLayer = dashedLineLayer
    }
}
