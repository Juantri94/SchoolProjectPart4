//
//  AlertViewModel.swift
//  DeanFramework
//
//  Created by Juan Trinidad Jimenez Armesto on 18/07/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import Foundation

//------------------------------------------------
// MARK: - AlertViewDelegate
//------------------------------------------------

public protocol AlertViewDelegate: class {
    func AlertViewDidPrimaryAction()
    func AlertViewDidSecondaryAction()
}

//------------------------------------------------
// MARK: - AlertViewModel
//------------------------------------------------

final class AlertViewModel {
    
    //------------------------------------------------
    // MARK: - Init
    //------------------------------------------------
    
    init(router: AlertRouter, title: String?, body: String?, primaryButton: String?, secondaryButton: String?, delegate: AlertViewDelegate) {
        self.router = router
        self.title = title
        self.body = body
        self.primaryButton = primaryButton
        self.secondaryButton = secondaryButton
        self.delegate = delegate
    }
    
    //------------------------------------------------
    // MARK: - Variables and constants
    //------------------------------------------------
    
    private var router: AlertRouter
    private weak var delegate: AlertViewDelegate?
    let title: String?
    let body: String?
    let primaryButton: String?
    let secondaryButton: String?
    
    //------------------------------------------------
    // MARK: - ViewModel
    //------------------------------------------------
    
    func primaryAction() {
        self.delegate?.AlertViewDidPrimaryAction()
        self.router.dismiss()
    }
    
    func secondaryAction() {
        self.delegate?.AlertViewDidSecondaryAction()
        self.router.dismiss()
    }
    
}
