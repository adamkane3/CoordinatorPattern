//
//  BuyCoordinator.swift
//  CoordinatorPattern
//
//  Created by Adam Kane on 13/10/2021.
//

import Foundation
import UIKit

class BuyCoordinator: Coordinator {
    weak var parentCoordinator: MainCoordinator?
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        vc.title = "Buy"
        navigationController.pushViewController(vc, animated: true)
    }

    func buyBags(buy bags: Int) {
        let vc = BuyDetailViewController.instantiate()
        vc.bagsValue = bags
        vc.coordinator = self
        vc.title = "Passed a value example"
        navigationController.pushViewController(vc, animated: true)
    }
}
