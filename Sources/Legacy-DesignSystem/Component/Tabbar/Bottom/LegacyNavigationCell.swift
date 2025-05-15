import SwiftUI

@available(macOS 12, iOS 15, *)
public struct LegacyNavigationCell: View {
    let item: LegacyTabItem
    let isSelected: Bool
    let action: () -> Void
    
    public var body: some View {
        Button {
            withAnimation(.spring(duration: 0.2)) {
                HapticManager.instance.impact(style: .soft)
                action()
            }
        } label: {
            VStack(spacing: 2) {
                item.icon
                Text(item.label)
                    .font(.caption2(.medium))
            }
            .foreground(isSelected ? LegacyColor.Primary.normal : LegacyColor.Label.assistive)
        }
        .disabled(isSelected)
    }
}
