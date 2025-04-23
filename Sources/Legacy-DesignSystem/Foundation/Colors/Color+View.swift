import SwiftUI

@available(macOS 12, iOS 15, *)
public extension View {
    func foreground(_ colorable: LegacyColorable, opacity: Double = 1) -> some View {
        self.foregroundStyle(colorable.color.rawValue.opacity(opacity))
    }
    
    func background(_ colorable: LegacyColorable, opacity: Double = 1) -> some View {
        self.background(colorable.color.rawValue.opacity(opacity))
    }
    
    func tint(_ colorable: LegacyColorable, opacity: Double = 1) -> some View {
        self.tint(colorable.color.rawValue.opacity(opacity))
    }
}
