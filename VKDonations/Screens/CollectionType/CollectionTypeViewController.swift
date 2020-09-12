//
//  CollectionTypeViewController.swift
//  VKDonations
//
//  Created by Timur Shafigullin on 12/09/2020.
//  Copyright © 2020 Timbaev. All rights reserved.
//

import UIKit

final class CollectionTypeViewController: UIViewController {

    // MARK: - Nested Types

    private typealias CollectionSegueData = (fields: [Field], title: String)

    // MARK:

    private enum Segues {

        // MARK: - Type Proeprties

        static let showCollection = "ShowCollection"
    }

    // MARK: - Instance Methods

    @IBAction private func onTargetCollectionBannerTouchUpInside(_ sender: BannerControl) {
        let fields = [
            Field(title: "Название сбора", placeholder: "Название сбора", type: .text),
            Field(title: "Сумма, ₽", placeholder: "Сколько нужно собрать?", type: .text),
            Field(title: "Цель", placeholder: "Например, лечение человека", type: .text),
            Field(title: "Описание", placeholder: "На что пойдут деньги и как они кому-то помогут?", type: .textarea),
            Field(title: "Куда получать деньги", placeholder: .empty, defaultValue: "Счёт VK Pay · 1234", type: .select)
        ]

        let segueData: CollectionSegueData = (fields, "Целевой сбор")

        self.performSegue(withIdentifier: Segues.showCollection, sender: segueData)
    }

    @IBAction private func onRegularCollectionBannerTouchUpInside(_ sender: BannerControl) {
        let fields = [
            Field(title: "Название сбора", placeholder: "Название сбора", type: .text),
            Field(title: "Сумма в месяц, ₽", placeholder: "Сколько нужно в месяц?", type: .text),
            Field(title: "Цель", placeholder: "Например, поддержка приюта", type: .text),
            Field(title: "Описание", placeholder: "На что пойдут деньги и как они кому-то помогут?", type: .textarea),
            Field(title: "Куда получать деньги", placeholder: .empty, defaultValue: "Счёт VK Pay · 1234", type: .select),
            Field(title: "Автор", placeholder: .empty, defaultValue: "Матвей Правосудов", type: .select)
        ]

        let segueData: CollectionSegueData = (fields, "Регулярный сбор")

        self.performSegue(withIdentifier: Segues.showCollection, sender: segueData)
    }

    // MARK: - UIViewController

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)

        switch segue.identifier {
        case Segues.showCollection:
            guard let segueData = sender as? CollectionSegueData else {
                fatalError("Unexpected sender type. Should be 'CollectionSegueData'")
            }

            guard let screen = segue.destination as? CollectionScreen else {
                fatalError("Unexpected screen type. Should be 'CollectionScreen'")
            }

            screen.apply(fields: segueData.fields, title: segueData.title)

        default:
            break
        }
    }
}
