//
//  SchoolHomeRouter.swift
//  SchoolProject
//
//  Created by Juan Trinidad Jimenez Armesto on 28/01/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import Foundation
import StudentFramework
import DeanFramework

final class SchoolHomeRouter {
    
    //------------------------------------------------
    // MARK: - Init
    //------------------------------------------------
    
    static func get() -> SchoolHomeViewController {
        
        // Init
        let router = SchoolHomeRouter()
        let viewModel = SchoolHomeViewModel(router: router)
        let viewController = SchoolHomeViewController(viewModel: viewModel)
        
        // View Model
        viewModel.setViewProtocol(viewController)
        
        // Router
        router.viewController = viewController
        
        return viewController
    }
    
    //------------------------------------------------
    // MARK: - Variables
    //------------------------------------------------
    
    private var viewController: SchoolHomeViewController?
    
    //------------------------------------------------
    // MARK: - Router
    //------------------------------------------------
    
    func openStudentFramework() {
        let vc = StudentInteractor.studentHome
        self.viewController?.navigationController?.pushViewController(vc, animated: true)
    }
    
    func openAlert() {
        let vc = AlertRouter.get(title: "School alert", body: "Alert from School Home view", primaryButton: "Close", secondaryButton: nil, delegate: self)
        self.viewController?.present(vc, animated: true, completion: nil)
    }
    
    func openRatingPopup(delegate: RatingPopupDelegate) {
        let title = "Rate school"
        let body = "How was the school this year?"
        let vc = RatingPopupRouter.get(title: title, body: body, delegate: delegate)
        self.viewController?.present(vc, animated: true, completion: nil)
    }
    
}

// MARK: - AlertViewDelegate

extension SchoolHomeRouter: AlertViewDelegate {
    
    func AlertViewDidPrimaryAction() {
        print("First action")
    }
    
    func AlertViewDidSecondaryAction() {
        print("Second action")
    }
    
}
