import SwiftUI

@available(macOS 12, iOS 15, *)
public protocol LegacyTypography {
    var size: CGFloat { get }
    var weight: Pretendard.Weight { get }
}
