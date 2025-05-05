import UIKit

@MainActor
public class HapticManager {
    public static let instance = HapticManager()

    private init() {}

    public func impact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.prepare()
        generator.impactOccurred()
    }
}
