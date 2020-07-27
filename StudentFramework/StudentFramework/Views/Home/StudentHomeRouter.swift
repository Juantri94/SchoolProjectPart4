//
//  StudentHomeRouter.swift
//  StudentFramework
//
//  Created by Juan Trinidad Jimenez Armesto on 28/01/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import Foundation

final class StudentHomeRouter {
    
    //------------------------------------------------
    // MARK: - Init
    //------------------------------------------------
    
    static func get() -> StudentHomeViewController {
        
        // Init
        let router = StudentHomeRouter()
        let viewModel = StudentHomeViewModel(router: router)
        let viewController = StudentHomeViewController(viewModel: viewModel)
        
        // View Model
        viewModel.setViewProtocol(viewController)
        
        // Router
        router.viewController = viewController
        
        return viewController
    }
    
    //------------------------------------------------
    // MARK: - Variables
    //------------------------------------------------
    
    private var viewController: StudentHomeViewController?
    
    //------------------------------------------------
    // MARK: - Router
    //------------------------------------------------
    
    func showDetail() {
        let vc = StudentDetailRouter.get()
        self.viewController?.navigationController?.pushViewController(vc, animated: true)
    }
    
}
