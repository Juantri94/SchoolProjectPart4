//
//  AlertViewController.swift
//  DeanFramework
//
//  Created by Juan Trinidad Jimenez Armesto on 18/07/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import UIKit

//------------------------------------------------
// MARK: - AlertViewController
//------------------------------------------------

public final class AlertViewController: UIViewController {

    //------------------------------------------------
    // MARK: - Outlets
    //------------------------------------------------
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var primaryButton: UIButton!
    @IBOutlet weak var secondaryButton: UIButton!
    
    //------------------------------------------------
    // MARK: - Init
    //------------------------------------------------
    
    init(nibName: String, bundle: Bundle, viewModel: AlertViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nibName, bundle: bundle)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //------------------------------------------------
    // MARK: - Variables and constants
    //------------------------------------------------
    
    private var viewModel: AlertViewModel
    
    //------------------------------------------------
    // MARK: - LifeCycle
    //------------------------------------------------
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        self.setup()
        self.localize()
    }
    
    //------------------------------------------------
    // MARK: - Setup view
    //------------------------------------------------
    
    private func setup() {
        self.view.backgroundColor = .clear
        self.view.isOpaque = false
        
        self.titleLabel.isHidden = true
        self.bodyLabel.isHidden = true
        self.primaryButton.isHidden = true
        self.secondaryButton.isHidden = true
    }
    
    private func localize() {
        if let text = self.viewModel.title, !text.isEmpty {
            self.titleLabel.text = text
            self.titleLabel.isHidden = false
        }
        
        if let text = self.viewModel.body, !text.isEmpty {
            self.bodyLabel.text = text
            self.bodyLabel.isHidden = false
        }
        
        if let text = self.viewModel.primaryButton, !text.isEmpty {
            self.primaryButton.setTitle(text, for: .normal)
            self.primaryButton.isHidden = false
        }
        
        if let text = self.viewModel.secondaryButton, !text.isEmpty {
            self.secondaryButton.setTitle(text, for: .normal)
            self.secondaryButton.isHidden = false
        }
    }
    
    //------------------------------------------------
    // MARK: - Button actions
    //------------------------------------------------
    
    @IBAction func primaryButtonAction(_ sender: Any) {
        self.viewModel.primaryAction()
    }
    
    @IBAction func secondaryButtonAction(_ sender: Any) {
        self.viewModel.secondaryAction()
    }
    
}
