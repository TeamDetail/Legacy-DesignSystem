import SwiftUI

@available(macOS 12, iOS 15, *)
public struct ProgressBar: View {
    enum ProgressColor: Int {
        case one = 1
        case two = 2
        case three = 3
    }

    var progress: ProgressColor
    public var body: some View {
        HStack {
            ForEach(1...3, id: \.self) { index in
                Circle()
                    .foreground(index == progress.rawValue ? LegacyColor.Primary.normal : LegacyColor.Label.normal)
                    .frame(width: 8, height: 8)
            }
        }
    }
}

