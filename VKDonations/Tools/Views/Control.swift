//
//  Control.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

class Control: UIControl {

    // MARK: - Instance Properties

    private var shadowLayer: CAShapeLayer?

    // MARK: -

    @IBInspectable public var defaultBorderColor: UIColor? {
        didSet {
            self.applyState()
        }
    }

    @IBInspectable public var highlightedBorderColor: UIColor? {
        didSet {
            self.applyState()
        }
    }

    @IBInspectable public var selectedBorderColor: UIColor? {
        didSet {
            self.applyState()
        }
    }

    @IBInspectable public var disabledBorderColor: UIColor? {
        didSet {
            self.applyState()
        }
    }

    // MARK: -

    @IBInspectable public var borderWidth: CGFloat {
        get {
            return self.layer.borderWidth
        }

        set {
            self.layer.borderWidth = newValue
        }
    }

    @IBInspectable public var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }

        set {
            self.layer.cornerRadius = newValue
            self.layer.masksToBounds = (newValue > 0.0)
        }
    }

    // MARK: -

    @IBInspectable public var shouldHighliteContent: Bool = true {
        didSet {
            self.applyState()
        }
    }

    @IBInspectable public var shouldHighliteDisabledContent: Bool = true {
        didSet {
            self.applyState()
        }
    }

    // MARK: -

    @IBInspectable public var shadowColor: UIColor = .clear
    @IBInspectable public var shadowOffset: CGSize = .zero
    @IBInspectable public var shadowOpacity: Float = 0
    @IBInspectable public var shadowRadius: CGFloat = 0

    // MARK: -

    var transitionOptions: UIView.AnimationOptions = [
        .transitionCrossDissolve,
        .allowAnimatedContent,
        .allowUserInteraction
    ]

    // MARK: - UIControl

    override var isHighlighted: Bool {
        didSet {
            self.applyState()
        }
    }

    override var isEnabled: Bool {
        didSet {
            self.applyState()
        }
    }

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.initialize()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        self.initialize()
    }

    // MARK: - Instance Methods

    public func applyState() {
        if self.isEnabled {
            if self.isHighlighted {
                UIView.transition(with: self, duration: 0.05, options: self.transitionOptions, animations: {
                    self.layer.borderColor = (self.highlightedBorderColor ?? self.defaultBorderColor)?.cgColor

                    self.alpha = (self.shouldHighliteContent) ? 0.5 : self.alpha
                })
            } else if self.isSelected {
                UIView.transition(with: self, duration: 0.05, options: self.transitionOptions, animations: {
                    self.layer.borderColor = (self.selectedBorderColor ?? self.defaultBorderColor)?.cgColor

                    self.alpha = 1.0
                })
            } else {
                UIView.transition(with: self, duration: 0.25, options: self.transitionOptions, animations: {
                    self.layer.borderColor = self.defaultBorderColor?.cgColor

                    self.alpha = 1.0
                })
            }
        } else {
            UIView.transition(with: self, duration: 0.25, options: self.transitionOptions, animations: {
                self.layer.borderColor = (self.disabledBorderColor ?? self.defaultBorderColor)?.cgColor

                self.alpha = (self.shouldHighliteDisabledContent) ? 0.5 : self.alpha
            })
        }
    }

    // MARK: -

    /// Override this method to setup initial state after initialization (e.g. add subviews, setup constraints and etc).
    /// Helps not write initializers in the subclasses.
    /// Default implementation do nothing.
    func initialize() { }

    // MARK: - UIView

    public override func layoutSubviews() {
        super.layoutSubviews()

        if let shadowLayer = self.shadowLayer {
            shadowLayer.path = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.cornerRadius).cgPath
            shadowLayer.shadowPath = shadowLayer.path
        } else {
            let shadowLayer = CAShapeLayer()

            shadowLayer.path = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.cornerRadius).cgPath
            shadowLayer.fillColor = self.backgroundColor?.cgColor

            shadowLayer.shadowColor = self.shadowColor.cgColor
            shadowLayer.shadowPath = shadowLayer.path
            shadowLayer.shadowOffset = self.shadowOffset
            shadowLayer.shadowOpacity = self.shadowOpacity
            shadowLayer.shadowRadius = self.shadowRadius

            self.layer.insertSublayer(shadowLayer, at: 0)

            self.backgroundColor = .clear

            self.shadowLayer = shadowLayer
        }
    }
}
