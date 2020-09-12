//
//  DashedLineView.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

class DashedLineBorderView: UIView {

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

        let lineLayer = CAShapeLayer()

        lineLayer.strokeColor = self.strokeColor.cgColor
        lineLayer.lineWidth = self.lineWidth
        lineLayer.lineDashPattern = self.lineDashPattern

        let path = CGMutablePath()
        let startPoint = CGPoint(x: self.bounds.minX, y: self.bounds.midY)
        let endPoint = CGPoint(x: self.bounds.maxX, y: self.bounds.midY)

        path.addLines(between: [startPoint, endPoint])

        lineLayer.path = path

        self.layer.addSublayer(lineLayer)

        self.dashedLineLayer = lineLayer
    }
}
