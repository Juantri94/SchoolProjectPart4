//
//  StudentDetailViewController.swift
//  StudentFramework
//
//  Created by Juan Trinidad Jimenez Armesto on 28/01/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import UIKit

//------------------------------------------------
// MARK: - StudentDetailViewControllerProtocol
//------------------------------------------------

protocol StudentDetailViewControllerProtocol: class {
    
}

//------------------------------------------------
// MARK: - StudentDetailViewController
//------------------------------------------------

final class StudentDetailViewController: UIViewController {

    //------------------------------------------------
    // MARK: - Init
    //------------------------------------------------
    
    init(viewModel: StudentDetailViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "StudentDetailViewController", bundle: Bundle(for: StudentDetailViewController.self))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //------------------------------------------------
    // MARK: - Variables and constants
    //------------------------------------------------
    
    private var viewModel: StudentDetailViewModel
    
    //------------------------------------------------
    // MARK: - Button actions
    //------------------------------------------------
    
    @IBAction func openRatingPopup(_ sender: UIButton) {
        self.viewModel.openRatingPopup()
    }
}

//-----------------------------------------------
// MARK: - StudentDetailViewControllerProtocol
//-----------------------------------------------

extension StudentDetailViewController: StudentDetailViewControllerProtocol {
    
    func didLoadView() {
         
     }
}
