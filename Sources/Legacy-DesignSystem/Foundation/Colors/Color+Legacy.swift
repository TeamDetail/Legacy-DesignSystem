import SwiftUI

@available(macOS 12, iOS 15, *)
public struct LegacyColor {
    public let rawValue: Color
    
    public init(_ rawValue: Color) {
        self.rawValue = rawValue
    }
    
    public enum Common {
        case white
        case black
    }
    
    //MARK: Color
    public enum Primary {
        case normal
        case alternative
    }
    
    public enum Status {
        case negative
        case cautionary
        case positive
    }
    
    public enum Label {
        case normal
        case strong
        case netural
        case alternative
        case assistive
        case disable
    }
    
    public enum Fill {
        case normal
        case netural
        case alternative
        case assistive
    }
    
    public enum Background {
        case normal
        case netural
        case alternative
    }
    
    public enum Line {
        case normal
        case netural
        case alternative
    }
    
    //MARK: Sementic
    public enum Blue {
        case normal
        case alternative
        case netural
    }
    
    public enum Purple {
        case normal
        case alternative
        case netural
    }
    
    public enum Green {
        case normal
        case alternative
    }
    
    public enum Red {
        case normal
        case alternative
        case netural
    }
    
    public enum Yellow {
        case normal
        case alternative
        case netural
    }
}

@available(macOS 12, iOS 15, *)
extension LegacyColor.Common : LegacyColorable, CaseIterable {
    public var color : LegacyColor {
        switch self {
        case .white: .init(P.common100)
        case .black: .init(P.common0)
        }
    }
}

@available(macOS 12, iOS 15, *)
extension LegacyColor.Primary : LegacyColorable, CaseIterable {
    public var color: LegacyColor {
        switch self {
        case .normal: .init(Color(0xA05AE8))
        case .alternative: .init(Color(0x6420AA).opacity(0.45))
        }
    }
}

@available(macOS 12, iOS 15, *)
extension LegacyColor.Status : LegacyColorable, CaseIterable {
    public var color: LegacyColor {
        switch self {
        case .negative: .init(P.red50)
        case .cautionary: .init(P.yellow50)
        case .positive: .init(P.green50)
        }
    }
}

@available(macOS 12, iOS 15, *)
extension LegacyColor.Label : LegacyColorable, CaseIterable {
    public var color: LegacyColor {
        switch self {
        case .normal: .init(P.neutral99)
        case .strong: .init(P.common100)
        case .netural: .init(P.neutral95)
        case .alternative: .init(P.neutral99)
        case .assistive: .init(P.neutral70)
        case .disable: .init(P.neutral30)
        }
    }
}

@available(macOS 12, iOS 15, *)
extension LegacyColor.Fill : LegacyColorable, CaseIterable {
    public var color: LegacyColor {
        switch self {
        case .normal: .init(P.neutral15)
        case .netural: .init(P.neutral25)
        case .alternative: .init(P.neutral30)
        case .assistive: .init(P.neutral60)
        }
    }
}

@available(macOS 12, iOS 15, *)
extension LegacyColor.Background : LegacyColorable, CaseIterable {
    public var color: LegacyColor {
        switch self {
        case .normal: .init(Color(0x1C1C1E))
        case .netural: .init(P.neutral10)
        case .alternative: .init(P.neutral7)
        }
    }
}

@available(macOS 12, iOS 15, *)
extension LegacyColor.Line : LegacyColorable, CaseIterable {
    public var color: LegacyColor {
        switch self {
        case .normal: .init(P.neutral50)
        case .netural: .init(P.neutral30)
        case .alternative: .init(P.neutral25)
        }
    }
}

@available(macOS 12, iOS 15, *)
extension LegacyColor.Blue : LegacyColorable, CaseIterable {
    public var color: LegacyColor {
        switch self {
        case .normal: .init(P.blueNormal)
        case .alternative: .init(P.blueAlternative)
        case .netural: .init(P.blueNetural)
        }
    }
}

@available(macOS 12, iOS 15, *)
extension LegacyColor.Red : LegacyColorable, CaseIterable {
    public var color: LegacyColor {
        switch self {
        case .normal: .init(P.redNormal)
        case .alternative: .init(P.redAlternative)
        case .netural: .init(P.redNetural)
        }
    }
}

@available(macOS 12, iOS 15, *)
extension LegacyColor.Yellow : LegacyColorable, CaseIterable {
    public var color: LegacyColor {
        switch self {
        case .normal: .init(P.yellowNormal)
        case .alternative: .init(P.yellowAlternative)
        case .netural: .init(P.yellowNetural)
        }
    }
}

@available(macOS 12, iOS 15, *)
extension LegacyColor.Green : LegacyColorable, CaseIterable {
    public var color: LegacyColor {
        switch self {
        case .normal: .init(P.greenNormal)
        case .alternative: .init(P.greenAlternative)
        }
    }
}

@available(macOS 12, iOS 15, *)
extension LegacyColor.Purple : LegacyColorable, CaseIterable {
    public var color: LegacyColor {
        switch self {
        case .normal: .init(P.purpleNormal)
        case .alternative: .init(P.purpleAlternative)
        case .netural: .init(P.purpleNetural)
        }
    }
}

@available(macOS 12, iOS 15, *)
private extension LegacyColorable {
    var P: LegacyPalette {
        LegacyPalette.shared
    }
}

