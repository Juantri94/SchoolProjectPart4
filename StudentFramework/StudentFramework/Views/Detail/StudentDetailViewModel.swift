//
//  StudentDetailViewModel.swift
//  StudentFramework
//
//  Created by Juan Trinidad Jimenez Armesto on 28/01/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import Foundation
import DeanFramework

final class StudentDetailViewModel {
    
    //------------------------------------------------
    // MARK: - Init
    //------------------------------------------------
    
    init(router: StudentDetailRouter) {
        self.router = router
    }
    
    func setViewProtocol(_ view: StudentDetailViewControllerProtocol) {
        self.view = view
    }
    
    //------------------------------------------------
    // MARK: - Variables and constants
    //------------------------------------------------
    
    private weak var view: StudentDetailViewControllerProtocol?
    private var router: StudentDetailRouter?
    
    private var ratingPopupDelegate: RatingPopupDelegate?
    
    //------------------------------------------------
    // MARK: - View model
    //------------------------------------------------
    
    func openRatingPopup() {
        self.ratingPopupDelegate = StudentRating()
        guard let delegate = self.ratingPopupDelegate else { return }
        self.router?.openRatePopup(delegate: delegate)
    }
    
}
