//
//  InputView.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

final class InputView: NibView {

    // MARK: - Instance Properties

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var textField: PrimaryFextField!

    // MARK: -

    var title: String? {
        get {
            self.titleLabel.text
        }

        set {
            self.titleLabel.text = newValue
        }
    }

    var text: String? {
        get {
            self.textField.text
        }

        set {
            self.textField.text = newValue
        }
    }

    var placeholder: String? {
        get {
            self.textField.placeholder
        }

        set {
            self.textField.placeholder = newValue
        }
    }
}
