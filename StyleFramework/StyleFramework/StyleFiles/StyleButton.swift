//
//  StyleButton.swift
//  StyleFramework
//
//  Created by Juan Trinidad Jimenez Armesto on 29/03/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import UIKit

public enum ButtonStyle: String {
    case primaryBlue
    case primaryRed

    func getTextColor() -> UIColor {
        switch self {
        case .primaryBlue: return .primaryBlue
        case .primaryRed: return .primaryRed
        }
    }
    
    func getBackgroundColor() -> UIColor {
        switch self {
        case .primaryBlue, .primaryRed: return .white
        }
    }
    
    func getBorderColor() -> UIColor {
        switch self {
        case .primaryBlue: return .primaryBlue
        case .primaryRed: return .primaryRed
        }
    }
    
}
