//
//  Field.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import Foundation

struct Field {

    // MARK: - Nested Types

    enum `Type` {

        // MARK: - Enumeration Cases

        case text
        case textarea
        case select
    }

    // MARK: - Instance Properties

    let title: String
    let placeholder: String
    let defaultValue: String?
    let type: Type

    // MARK: - Initializers

    init(title: String, placeholder: String, defaultValue: String? = nil, type: Type) {
        self.title = title
        self.placeholder = placeholder
        self.defaultValue = defaultValue
        self.type = type
    }
}
