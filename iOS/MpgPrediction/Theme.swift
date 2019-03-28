//
//  Theme.swift
//  MpgPrediction
//
//  Created by Nathan Dudley on 1/13/19.
//  Copyright © 2019 Nathan Dudley. All rights reserved.
//

import Foundation
import UIKit

class Theme {
    
    private init(){}
    
    static let primaryRed = UIColor(red: 236.0/255.0, green: 12.0/255.0, blue: 54.0/255.0, alpha: 1.0)
    static let backgroundGray = UIColor(red: 236.0/255.0, green: 236.0/255.0, blue: 236.0/255.0, alpha: 1.0)
    static let activityIndicatorBackgroundGray = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0.3)
    static let activityIndicatorGray = UIColor(red: 68.0/255.0, green: 68.0/255.0, blue: 68.0/255.0, alpha: 0.7)
    
    static func applyNavigationBarTheme(navBar: UINavigationBar) {
        navBar.titleTextAttributes =
            [NSAttributedString.Key.foregroundColor: UIColor.white,
             NSAttributedString.Key.font: UIFont(name: "Menlo", size: 21)!]
        navBar.barTintColor = primaryRed
    }
    
    static func applyStandardButtonTheme(button: UIButton) {
        button.backgroundColor = Theme.primaryRed
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 3
    }
    
    static func applyButtonTheme(button: UIButton, state: UIControl.State) {
        
        button.layer.borderColor = Theme.primaryRed.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 3
        
        switch state {
        case .normal:
            button.backgroundColor = Theme.backgroundGray
            button.setTitleColor(Theme.primaryRed, for: state)
            break
        case .selected:
            button.backgroundColor = Theme.primaryRed
            button.setTitleColor(.white, for: .normal)
            break
        default:
            break
        }
    }

}
