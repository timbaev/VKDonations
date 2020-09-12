//
//  InputTextAreaView.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

final class InputTextAreaView: NibView {

    // MARK: - Instance Properties

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var textView: PrimaryTextView!

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
            self.textView.text
        }

        set {
            self.textView.text = newValue
        }
    }

    var placeholder: String? {
        get {
            self.textView.placeholder
        }

        set {
            self.textView.placeholder = newValue
        }
    }
}
