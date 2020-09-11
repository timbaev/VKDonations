//
//  NibView.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 11/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

class NibView: UIView {

    // MARK: - Instance Properties

    private(set) var contentView: UIView!

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.initialize()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        self.initialize()
    }

    // MARK: - Instance Methods

    private func configureView() {
        self.contentView = self.loadNib()

        self.addSubview(self.contentView)

        self.contentView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            self.contentView.topAnchor.constraint(equalTo: self.topAnchor),
            self.contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            self.contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }

    // MARK: -

    /// Override this method to setup initial state after initialization (e.g. add subviews, setup constraints and etc).
    /// Helps not write initializers in the subclasses.
    /// Default implementation configure `contentView` from Nib.
    func initialize() {
        self.backgroundColor = .clear

        self.configureView()
    }
}

// MARK: -

private extension UIView {

    // MARK: - Instance Methods

    func loadNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)

        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
}
