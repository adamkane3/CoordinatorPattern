//
//  BuyViewController.swift
//  CoordinatorPattern
//
//  Created by Adam Kane on 13/10/2021.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {
    weak var coordinator: BuyCoordinator?
    
    @IBAction func buyOneBagTapped(_ sender: Any) {
        coordinator?.buyBags(buy: 1)
    }
    
    @IBAction func buyTenBagsTapped(_ sender: Any) {
        coordinator?.buyBags(buy: 10)
    }
}
