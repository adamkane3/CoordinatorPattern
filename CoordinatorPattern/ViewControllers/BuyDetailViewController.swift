//
//  BuyDetailViewController.swift
//  CoordinatorPattern
//
//  Created by Adam Kane on 13/10/2021.
//

import UIKit

class BuyDetailViewController: UIViewController, Storyboarded {
    @IBOutlet var numberOfBagsLabel: UILabel!
    
    weak var coordinator: BuyCoordinator?
    var bagsValue: Int = 0
    
    override func viewDidLoad() {
        numberOfBagsLabel.text = "Number of bags bought: \(bagsValue)"
    }
}
