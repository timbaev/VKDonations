//
//  DonationListViewController.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 11/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

final class DonationListViewController: UIViewController {

    // MARK: - Nested Types

    private enum Segues {

        // MARK: - Type Proeprties

        static let showCollectionType = "ShowCollectionType"
    }

    // MARK: - Instance Properties

    @IBOutlet private weak var placeholderView: PlaceholderView!

    // MARK: - Instance Methods

    private func configurePlaceholderView() {
        self.placeholderView.onButtonTapped = { [unowned self] in
            self.performSegue(withIdentifier: Segues.showCollectionType, sender: nil)
        }
    }

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        self.configurePlaceholderView()
    }
}
