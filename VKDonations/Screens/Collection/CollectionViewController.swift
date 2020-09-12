//
//  CollectionViewController.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

final class CollectionViewController: UIViewController {

    // MARK: - Instance Properties

    @IBOutlet private weak var scrollView: UIScrollView!
    @IBOutlet private weak var fieldsStackView: UIStackView!

    @IBOutlet private weak var coverTitleLabel: UILabel!

    @IBOutlet private weak var nextButton: PrimaryButton!

    @IBOutlet private weak var bottomSpacerViewHeightConstraint: NSLayoutConstraint!

    // MARK: -

    private var fields: [Field] = []

    // MARK: - Instance Methods

    @IBAction private func onCoverControlTouchUpInside(_ sender: Control) { }

    // MARK: -

    private func configureFieldsStackView(with fields: [Field]) {
        self.fieldsStackView.rearrangeSubviews(with: fields, creationBlock: { field in
            switch field.type {
            case .text:
                let inputView = InputView()

                inputView.title = field.title
                inputView.placeholder = field.placeholder

                return inputView

            case .textarea:
                let inputView = InputTextAreaView()

                inputView.title = field.title
                inputView.placeholder = field.placeholder

                return inputView

            case .select:
                let selectView = SelectView()

                selectView.title = field.title
                selectView.text = field.defaultValue

                return selectView
            }
        })
    }

    private func configureNextButton() {
        self.nextButton.style = .large
        self.nextButton.setTitle("Далее", for: .normal)
    }

    private func configureCoverTitleLabel() {
        self.coverTitleLabel.attributedText = NSAttributedString(
            string: "Загрузить обложку",
            style: TextStyle.sfHeadlineMedium.withColor(ColorStyle.azure300.color)
        )
    }

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        self.configureFieldsStackView(with: self.fields)
        self.configureNextButton()
        self.configureCoverTitleLabel()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.subscribeToKeyboardNotifications()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        self.unsubscribeFromKeyboardNotifications()
    }
}

// MARK: - CollectionScreen

extension CollectionViewController: CollectionScreen {

    // MARK: - Instance Methods

    func apply(fields: [Field], title: String) {
        self.fields = fields
        self.title = title
    }
}

// MARK: - KeyboardHandler

extension CollectionViewController: KeyboardHandler {

    // MARK: - Instance Methods

    func handle(keyboardHeight: CGFloat, view: UIView) {
        self.bottomSpacerViewHeightConstraint.constant = keyboardHeight

        UIView.animate(withDuration: 0.25, animations: {
            self.view.layoutIfNeeded()
        })
    }
}
