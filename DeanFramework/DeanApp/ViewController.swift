//
//  ViewController.swift
//  DeanApp
//
//  Created by Juan Trinidad Jimenez Armesto on 18/07/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import UIKit
import DeanFramework

class ViewController: UIViewController {
    
    private var ratingDelegate: RatingPopupDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - Button actions
    
    @IBAction func openAlert(_ sender: UIButton) {
        let vc = AlertRouter.get(title: "Error", body: "Something went wrong", primaryButton: "Close", secondaryButton: nil, delegate: self)
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func openAlertTwoButtons(_ sender: UIButton) {
        let vc = AlertRouter.get(title: "Alert", body: "Alert with two buttons and a long message to check that the alert can have multiple lines", primaryButton: "First button", secondaryButton: "Second button", delegate: self)
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func openRatingPopup(_ sender: UIButton) {
        self.ratingDelegate = RatingExample()
        
        guard let delegate = self.ratingDelegate else { return }
        let vc = RatingPopupRouter.get(title: "Rating title", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", delegate: delegate)
        self.present(vc, animated: true, completion: nil)
    }
    
}

// MARK: - AlertViewDelegate

extension ViewController: AlertViewDelegate {
    
    func AlertViewDidPrimaryAction() {
        print("First action")
    }
    
    func AlertViewDidSecondaryAction() {
        print("Second action")
    }
    
}
