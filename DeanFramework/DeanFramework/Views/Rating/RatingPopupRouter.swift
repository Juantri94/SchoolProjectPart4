//
//  RatingPopupRouter.swift
//  DeanFramework
//
//  Created by Juan Trinidad Jimenez Armesto on 18/07/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import Foundation

public final class RatingPopupRouter {
    
    //------------------------------------------------
    // MARK: - Init
    //------------------------------------------------
    
    public static func get(title: String, body: String, delegate: RatingPopupDelegate) -> RatingPopupViewController {
        
        // Init
        let router = RatingPopupRouter()
        let viewModel = RatingPopupViewModel(router: router, title: title, body: body, delegate: delegate)
        let viewController = RatingPopupViewController(nibName: "RatingPopupViewController", bundle: Bundle(for: RatingPopupViewController.self), viewModel: viewModel)
        
        // UI
        viewController.modalPresentationStyle = .overCurrentContext
        viewController.modalTransitionStyle = .crossDissolve
        
        // View Model
        viewModel.setViewProtocol(viewController)
        
        // Router
        router.viewController = viewController
        
        return viewController
    }
    
    //------------------------------------------------
    // MARK: - Variables
    //------------------------------------------------
    
    private var viewController: RatingPopupViewController?
    
    //------------------------------------------------
    // MARK: - Router
    //------------------------------------------------
    
    func dismiss() {
        self.viewController?.dismiss(animated: true, completion: nil)
    }
    
}
