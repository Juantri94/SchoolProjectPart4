//
//  SchoolRating.swift
//  SchoolProject
//
//  Created by Juan Trinidad Jimenez Armesto on 22/07/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import Foundation
import DeanFramework

final class SchoolRating {
    
    private func ratingAction(option: Int, comments: String, callback: @escaping(_ success: Bool) -> Void) {
        
        // Do stuff
        print("School option: \(option)")
        print("School comments: \(comments)")
        
        callback(true)
        
    }
    
}


extension SchoolRating: RatingPopupDelegate {
    
    func closeActionRatingPopup() {
        print("Close")
    }
    
    func rateActionRatingPopup(option: Int, comments: String, callback: @escaping(_ success: Bool) -> Void) {
        self.ratingAction(option: option, comments: comments, callback: callback)
    }
    
}
