import UIKit

public enum FontSystem {
    public enum Title {
        public static var lg: UIFont {
            return .semibold(Scale.lg)
        }
        
        public static var xl: UIFont {
            return .semibold(Scale.xl)
        }
    }
    
    public enum Text {
        public static var md: UIFont {
            return .semibold(Scale.lg)
        }
    }
}

private extension FontSystem {
    enum Scale {
        static var xxs: CGFloat { 8 }
        static var xs:  CGFloat { 12 }
        static var sm:  CGFloat { 16 }
        static var md:  CGFloat { 20 }
        static var lg:  CGFloat { 24 }
        static var xl:  CGFloat { 32 }
    }
}
