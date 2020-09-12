//
//  UIEdgeInsets+Extensions.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

extension UIEdgeInsets {

    // MARK: - Initializers

    init(equilateral side: CGFloat) {
        self.init(top: side, left: side, bottom: side, right: side)
    }
}
