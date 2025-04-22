import SwiftUI

@available(macOS 12, iOS 15, *)
public extension Font {
    struct Title2: LegacyTypography, Sendable {
        public var size: CGFloat
        public var weight: Pretendard.Weight
        
        public static let bold = Self.init(size: 28, weight: .bold)
        public static let medium = Self.init(size: 28, weight: .medium)
        public static let regular = Self.init(size: 28, weight: .regular)
    }
}
