//
//  UIStackView+Extensions.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

extension UIStackView {

    // MARK: - Instance Methods

    func rearrangeSubviews<T: Sequence>(with dataArray: T, creationBlock: (T.Element) -> UIView) {
        self.arrangedSubviews.forEach { $0.removeFromSuperview() }

        dataArray.forEach { data in
            let view = creationBlock(data)

            self.addArrangedSubview(view)
        }
    }
}
