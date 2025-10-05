//
//  Grid.swift
//  CoreKit
//
//  Created by Malik Timurkaev on 05.10.2025.
//

import Foundation

public enum Grid {
    static var xxs: CGFloat { 4 }
    static var xs:  CGFloat { 8 }
    static var sm:  CGFloat { 12 }
    static var md:  CGFloat { 16 }
    static var lg:  CGFloat { 24 }
    static var xl:  CGFloat { 32 }
    static var xxl:  CGFloat { 42 }
}

public enum Insets {
    public enum Title {
        public enum Horizontal {
            public static var xxl: CGFloat { Grid.xxl }
        }
    }
}
