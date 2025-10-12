//
//  LayoutGrid.swift
//  CoreKit
//
//  Created by Malik Timurkaev on 05.10.2025.
//

import Foundation

public enum LayoutGrid {
    public static var xxs: CGFloat { 4 }
    public static var xs:  CGFloat { 8 }
    public static var sm:  CGFloat { 12 }
    public static var md:  CGFloat { 16 }
    public static var lg:  CGFloat { 24 }
    public static var xl:  CGFloat { 32 }
    public static var xxl:  CGFloat { 42 }
}

public enum Insets {
    public enum Title {
        public enum Horizontal {
            public static var xxl: CGFloat { LayoutGrid.xxl }
        }
    }
    
    public enum ScreenEdge {
        public enum Horizontal {
            public static var regular: CGFloat { LayoutGrid.sm }
        }
        
        public enum Vertical {
            public static var regular: CGFloat { LayoutGrid.sm }
        }
    }
}
