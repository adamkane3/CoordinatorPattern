//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Adam Kane on 13/10/2021.
//

import Foundation
import UIKit

class MainCoordinator: NSObject, Coordinator {
    var childCoordinators: [Coordinator] = []

    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        vc.title = "Home"
        navigationController.delegate = self
        navigationController.pushViewController(vc, animated: true)
    }

    func childDidFinish(_ child: Coordinator) {
        childCoordinators.removeAll { coordinator in
            coordinator === child
        }
    }

    func buySubscription() {
        let child = BuyCoordinator(navigationController: navigationController)
        childCoordinators.append(child)
        child.parentCoordinator = self
        child.start()
    }

    func createAccount() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        vc.title = "Create Account"
        navigationController.pushViewController(vc, animated: true)
    }
}

extension MainCoordinator: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }

        if navigationController.viewControllers.contains(fromViewController) {
            return
        }

        if let buyViewController = fromViewController as? BuyViewController {
            childDidFinish(buyViewController.coordinator!)
        }
    }
}
