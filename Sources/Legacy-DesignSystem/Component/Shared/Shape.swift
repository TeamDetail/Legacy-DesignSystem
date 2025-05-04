import SwiftUI

@available(macOS 12, iOS 15, *)
public extension View {
    func clipShape(size: CGFloat) -> some View {
        self.clipShape(RoundedRectangle(cornerRadius: size))
    }
}
