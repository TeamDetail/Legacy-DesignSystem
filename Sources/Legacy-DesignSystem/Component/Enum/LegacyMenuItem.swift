import SwiftUI

@available(macOS 12, iOS 15, *)
public enum LegacyMenuItem: Int, CaseIterable {
    case arrow, people, mail, setting, wrong, logout
    
    var icon: Image {
        switch self {
        case .arrow:
            Image(icon: .topArrow)
        case .people:
            Image(icon: .people)
        case .mail:
            Image(icon: .mail)
        case .setting:
            Image(icon: .setting)
        case .wrong:
            Image(icon: .wrong)
        case .logout:
            Image(icon: .out)
        }
    }
}
