//
//  PrimaryNavigationController.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 11/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

final class PrimaryNavigationController: UINavigationController {

    // MARK: - Instance Properties

    private weak var proxyDelegate: UINavigationControllerDelegate?

    // MARK: -

    override var delegate: UINavigationControllerDelegate? {
        get {
            self
        }

        set {
            self.proxyDelegate = newValue
        }
    }

    // MARK: - Instance Methods

    private func configureAppearance() {
        self.navigationBar.titleTextAttributes = TextStyle.sfTitle2Heavy.attributes()
        self.navigationBar.tintColor = ColorStyle.azure300.color
    }

    // MARK: - UINavigationController

    override func viewDidLoad() {
        super.viewDidLoad()

        self.configureAppearance()
    }
}

// MARK: - UINavigationControllerDelegate

extension PrimaryNavigationController: UINavigationControllerDelegate {

    // MARK: - Instance Methods

    func navigationController(
        _ navigationController: UINavigationController,
        willShow viewController: UIViewController,
        animated: Bool
    ) {
        self.proxyDelegate?.navigationController?(navigationController, willShow: viewController, animated: animated)

        let item = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

        viewController.navigationItem.backBarButtonItem = item
    }

    func navigationController(
        _ navigationController: UINavigationController,
        didShow viewController: UIViewController,
        animated: Bool
    ) {
        self.proxyDelegate?.navigationController?(navigationController, didShow: viewController, animated: animated)
    }

    func navigationControllerSupportedInterfaceOrientations(
        _ navigationController: UINavigationController
    ) -> UIInterfaceOrientationMask {
        self.proxyDelegate?.navigationControllerSupportedInterfaceOrientations?(navigationController) ?? .all
    }

    func navigationControllerPreferredInterfaceOrientationForPresentation(
        _ navigationController: UINavigationController
    ) -> UIInterfaceOrientation {
        self.proxyDelegate?.navigationControllerPreferredInterfaceOrientationForPresentation?(
            navigationController
        ) ?? .portrait
    }

    func navigationController(
        _ navigationController: UINavigationController,
        interactionControllerFor animationController: UIViewControllerAnimatedTransitioning
    ) -> UIViewControllerInteractiveTransitioning? {
        self.proxyDelegate?.navigationController?(navigationController, interactionControllerFor: animationController)
    }

    func navigationController(
        _ navigationController: UINavigationController,
        animationControllerFor operation: UINavigationController.Operation,
        from fromVC: UIViewController,
        to toVC: UIViewController
    ) -> UIViewControllerAnimatedTransitioning? {
        self.proxyDelegate?.navigationController?(
            navigationController,
            animationControllerFor: operation,
            from: fromVC,
            to: toVC
        )
    }
}
