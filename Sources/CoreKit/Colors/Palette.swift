//
//  Palette.swift
//  CoreKit
//
//  Created by Malik Timurkaev on 05.10.2025.
//

import UIKit
import SwiftUI

public enum Palette {
    public enum Asset: String {
        case whitePrimary = "AppWhite"
        case blackPrimary = "AppBlack"
        
        public var uiColor: UIColor {
            if let color = UIColor(named: rawValue) { return color }
            return .clear
        }
        
        public var color: Color { Color(rawValue) }
    }
    
    public enum Custom {
        case red
        
        public var uiColor: UIColor {
            switch self {
            case .red:
                    .systemRed
            }
        }
        
        public var color: Color { Color(uiColor) }
    }
}
