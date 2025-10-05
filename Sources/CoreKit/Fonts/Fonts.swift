//
//  Fonts.swift
//  FontsKit
//
//  Created by Malik Timurkaev on 01.10.2025.
//

import UIKit

extension UIFont {
    public static func regular(_ size: CGFloat) -> UIFont {
        .systemFont(ofSize: size, weight: .regular)
    }

    public static func medium(_ size: CGFloat) -> UIFont {
        .systemFont(ofSize: size, weight: .medium)
    }

    public static func semibold(_ size: CGFloat) -> UIFont {
        .systemFont(ofSize: size, weight: .semibold)
    }

    public static func bold(_ size: CGFloat) -> UIFont {
        .boldSystemFont(ofSize: size)
    }
}
