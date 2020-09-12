//
//  NibControl.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

class NibControl: Control {

    // MARK: - Instance Properties

    private(set) var contentView: UIView!

    // MARK: - Instance Methods

    private func configureView() {
        self.contentView = self.loadNib()
        self.contentView.frame = self.bounds
        self.contentView.isUserInteractionEnabled = false
        self.contentView.translatesAutoresizingMaskIntoConstraints = false

        self.addSubview(self.contentView)

        NSLayoutConstraint.activate([
            self.contentView.topAnchor.constraint(equalTo: self.topAnchor),
            self.contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            self.contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }

    // MARK: - Control

    override func initialize() {
        super.initialize()

        self.backgroundColor = .clear

        self.configureView()
    }
}
