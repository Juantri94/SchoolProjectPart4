//
//  ButtonExtension.swift
//  StyleFramework
//
//  Created by Juan Trinidad Jimenez Armesto on 19/04/2020.
//  Copyright © 2020 Juan Trinidad Jimenez Armesto. All rights reserved.
//

import UIKit

extension UIButton {
    
    // MARK: - Public methods
    
    public func setup(with style: ButtonStyle) {
        self.layer.borderColor = style.getBorderColor().cgColor
        self.backgroundColor = style.getBackgroundColor()
        self.setTitleColor(style.getTextColor(), for: .normal)
        self.commonConfiguration()
    }
    
    // MARK: - Private methods
    
    private func commonConfiguration() {
        self.layer.borderWidth = StyleConstants.buttonBorderWidth
        self.layer.cornerRadius = StyleConstants.buttonCornerRadius
        self.clipsToBounds = true
        self.isUserInteractionEnabled = true
        self.titleLabel?.adjustsFontSizeToFitWidth = true
        self.titleLabel?.lineBreakMode = .byClipping
    }
    
}
