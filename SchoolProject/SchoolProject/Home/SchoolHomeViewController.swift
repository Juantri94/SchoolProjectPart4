//
//  SchoolHomeViewController.swift
//  SchoolProject
//
//  Created by Juan Trinidad Jimenez Armesto on 28/01/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import UIKit
import StyleFramework

//------------------------------------------------
// MARK: - SchoolHomeViewControllerProtocol
//------------------------------------------------

protocol SchoolHomeViewControllerProtocol: class {
    
}

//------------------------------------------------
// MARK: - SchoolHomeViewController
//------------------------------------------------

final class SchoolHomeViewController: UIViewController {

    //------------------------------------------------
    // MARK: - Init
    //------------------------------------------------
    
    init(viewModel: SchoolHomeViewModel) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //------------------------------------------------
    // MARK: - Outlets
    //------------------------------------------------
    
    @IBOutlet weak var studentButton: UIButton!
    
    //------------------------------------------------
    // MARK: - Variables and constants
    //------------------------------------------------
    
    private var viewModel: SchoolHomeViewModel?
    
    //------------------------------------------------
    // MARK: - Life cycle
    //------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewModel?.printEnvironment()
        self.viewModel?.alamofireExample()
        
        self.studentButton.setup(with: .primaryRed)
    }
    
    //------------------------------------------------
    // MARK: - Button actions
    //------------------------------------------------
    
    @IBAction func openStudentFramework(_ sender: UIButton) {
        self.viewModel?.openStudentFramework()
    }
    
    @IBAction func openAlert(_ sender: UIButton) {
        self.viewModel?.openAlert()
    }
    
    @IBAction func openRating(_ sender: UIButton) {
        self.viewModel?.openRating()
    }
    
}

//-----------------------------------------------
// MARK: - SchoolHomeViewControllerProtocol
//-----------------------------------------------

extension SchoolHomeViewController: SchoolHomeViewControllerProtocol {
    
    func didLoadView() {
         
     }
}
