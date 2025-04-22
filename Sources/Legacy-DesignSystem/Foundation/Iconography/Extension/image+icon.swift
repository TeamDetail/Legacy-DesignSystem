import SwiftUI

@available(macOS 12, iOS 15, *)
public extension Image {
    init(icon: LegacyIconography) {
        self = Image(icon.rawValue, bundle: .module)
    }
}
