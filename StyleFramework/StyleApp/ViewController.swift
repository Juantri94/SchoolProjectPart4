//
//  ViewController.swift
//  StyleApp
//
//  Created by Juan Trinidad Jimenez Armesto on 29/03/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import UIKit
import StyleFramework

class ViewController: UIViewController {

    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firstButton.setup(with: .primaryBlue)
        self.secondButton.setup(with: .primaryRed)
    }

}

