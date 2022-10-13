//
//  ViewController.swift
//  Piggy Bank
//
//  Created by Vinícius Cavalcante on 11/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    let api = Api()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        api.getConversionRates()
    }
}
