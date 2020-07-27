//
//  RatingExample.swift
//  DeanApp
//
//  Created by Juan Trinidad Jimenez Armesto on 19/07/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import Foundation
import DeanFramework

final class RatingExample {
    
    private func ratingAction(option: Int, comments: String, callback: @escaping(_ success: Bool) -> Void) {
        
        // Do stuff
        print("Option: \(option)")
        print("Comments: \(comments)")
        
        callback(true)
        
    }
    
}


extension RatingExample: RatingPopupDelegate {
    
    func closeActionRatingPopup() {
        print("Close")
    }
    
    func rateActionRatingPopup(option: Int, comments: String, callback: @escaping(_ success: Bool) -> Void) {
        self.ratingAction(option: option, comments: comments, callback: callback)
    }
    
}
