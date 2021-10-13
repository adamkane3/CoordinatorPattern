//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Adam Kane on 13/10/2021.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
