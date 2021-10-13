//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Adam Kane on 13/10/2021.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator!

    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }

    @IBAction func createAccountTapped(_ sender: Any) {
        coordinator?.createAccount()
    }
}
