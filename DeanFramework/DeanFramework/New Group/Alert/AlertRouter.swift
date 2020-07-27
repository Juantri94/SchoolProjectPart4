//
//  AlertRouter.swift
//  DeanFramework
//
//  Created by Juan Trinidad Jimenez Armesto on 18/07/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import Foundation

public final class AlertRouter {
    
    //------------------------------------------------
    // MARK: - Init
    //------------------------------------------------
    
    public static func get(title: String? = nil,
                           body: String? = nil,
                           primaryButton: String? = nil,
                           secondaryButton: String? = nil,
                           delegate: AlertViewDelegate) -> AlertViewController {
        
        // Init
        let router = AlertRouter()
        let viewModel = AlertViewModel(router: router, title: title, body: body, primaryButton: primaryButton, secondaryButton: secondaryButton, delegate: delegate)
        let viewController = AlertViewController(nibName: "AlertViewController", bundle: Bundle(for: AlertViewController.self), viewModel: viewModel)
        
        // UI
        viewController.modalPresentationStyle = .overCurrentContext
        viewController.modalTransitionStyle = .crossDissolve
        
        // Router
        router.viewController = viewController
        
        return viewController
    }
    
    //------------------------------------------------
    // MARK: - Variables
    //------------------------------------------------
    
    private var viewController: AlertViewController?
    
    //------------------------------------------------
    // MARK: - Router
    //------------------------------------------------
    
    func dismiss() {
        self.viewController?.dismiss(animated: true, completion: nil)
    }
    
}
