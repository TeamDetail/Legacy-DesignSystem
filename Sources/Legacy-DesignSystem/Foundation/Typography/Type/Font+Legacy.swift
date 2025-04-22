import SwiftUI

@available(macOS 12, iOS 15, *)
public extension Font {
    static func pretendard(_ style: LegacyTypography) -> Font {
        custom(style.weight.rawValue, size: style.size)
    }
    
    static func title1(_ type: Font.Title1) -> Font {
        pretendard(type)
    }
    
    static func title2(_ type: Font.Title2) -> Font {
        pretendard(type)
    }
    
    static func title3(_ type: Font.Title3) -> Font {
        pretendard(type)
    }
    
    static func heading1(_ type: Font.Heading1) -> Font {
        pretendard(type)
    }
    
    static func heading2(_ type: Font.Heading2) -> Font {
        pretendard(type)
    }
    
    static func headline(_ type: Font.Headline) -> Font {
        pretendard(type)
    }
    
    static func body1(_ type: Font.Body1) -> Font {
        pretendard(type)
    }
    
    static func body2(_ type: Font.Body2) -> Font {
        pretendard(type)
    }
    
    static func label(_ type: Font.Label) -> Font {
        pretendard(type)
    }
    
    static func caption1(_ type: Font.Caption1) -> Font {
        pretendard(type)
    }
    
    static func caption2(_ type: Font.Caption2) -> Font {
        pretendard(type)
    }
}
