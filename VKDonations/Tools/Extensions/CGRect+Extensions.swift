//
//  CGRect+Extensions.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import Foundation
import CoreGraphics

extension CGRect {

    // MARK: - Instance Properties

    var top: CGFloat {
        return self.origin.y
    }

    var bottom: CGFloat {
        return self.origin.y + self.size.height
    }

    var left: CGFloat {
        return self.origin.x
    }

    var right: CGFloat {
        return self.origin.x + self.size.width
    }

    // MARK: -

    var adjusted: CGRect {
        return CGRect(x: Int(floor(self.origin.x)),
                      y: Int(floor(self.origin.y)),
                      width: Int(ceil(self.size.width)),
                      height: Int(ceil(self.size.height)))
    }

    // MARK: - Initializers

    init(x: CGFloat, y: CGFloat, size: CGSize) {
        self.init(x: x, y: y, width: size.width, height: size.height)
    }

    init(x: Double, y: Double, size: CGSize) {
        self.init(x: x, y: y, width: Double(size.width), height: Double(size.height))
    }

    init(x: Int, y: Int, size: CGSize) {
        self.init(x: CGFloat(x), y: CGFloat(y), width: size.width, height: size.height)
    }
}
