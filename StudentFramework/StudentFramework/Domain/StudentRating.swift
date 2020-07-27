//
//  StudentRating.swift
//  StudentFramework
//
//  Created by Juan Trinidad Jimenez Armesto on 22/07/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import Foundation
import DeanFramework

final class StudentRating {
    
    private func ratingAction(option: Int, comments: String, callback: @escaping(_ success: Bool) -> Void) {
        
        // Do stuff
        print("Student option: \(option)")
        print("Student comments: \(comments)")
        
        callback(true)
        
    }
    
}


extension StudentRating: RatingPopupDelegate {
    
    func closeActionRatingPopup() {
        print("Close")
    }
    
    func rateActionRatingPopup(option: Int, comments: String, callback: @escaping(_ success: Bool) -> Void) {
        self.ratingAction(option: option, comments: comments, callback: callback)
    }
    
}
