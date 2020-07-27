//
//  RatingPopupViewModel.swift
//  DeanFramework
//
//  Created by Juan Trinidad Jimenez Armesto on 18/07/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import Foundation

//------------------------------------------------
// MARK: - RatingPopupDelegate
//------------------------------------------------

public protocol RatingPopupDelegate: class {
    func closeActionRatingPopup()
    func rateActionRatingPopup(option: Int, comments: String, callback: @escaping(_ success: Bool) -> Void)
}

//------------------------------------------------
// MARK: - RatingPopupViewModel
//------------------------------------------------

final class RatingPopupViewModel {
    
    //------------------------------------------------
    // MARK: - Init
    //------------------------------------------------
    
    init(router: RatingPopupRouter, title: String, body: String, delegate: RatingPopupDelegate) {
        self.router = router
        self.title = title
        self.body = body
        self.delegate = delegate
    }
    
    func setViewProtocol(_ view: RatingPopupViewControllerProtocol) {
        self.view = view
    }
    
    //------------------------------------------------
    // MARK: - Variables and constants
    //------------------------------------------------
    
    private weak var view: RatingPopupViewControllerProtocol?
    private let router: RatingPopupRouter
    private weak var delegate: RatingPopupDelegate?
    let title: String
    let body: String
    
    private var option: Int?
    
    //------------------------------------------------
    // MARK: - Localization
    //------------------------------------------------
    
    let option1Text = "Good quality"
    let option2Text = "Medium quality"
    let option3Text = "Low quality"
    let placeholderText = "Write your comments"
    let rateButton = "Rate"
    let closeButton = "Close"
    
    //------------------------------------------------
    // MARK: - ViewModel
    //------------------------------------------------
    
    func setSelectedOption(_ option: Int) {
        self.option = option
        self.view?.enableRatingButton()
    }
    
    func closeView() {
        self.router.dismiss()
        self.delegate?.closeActionRatingPopup()
    }
    
    func rateAction(comments: String) {
        guard let option = self.option else { return }
        self.delegate?.rateActionRatingPopup(option: option, comments: comments, callback: { (success) in
            if success {
                self.router.dismiss()
            } else {
                print("Error")
            }
        })
    }
    
}
