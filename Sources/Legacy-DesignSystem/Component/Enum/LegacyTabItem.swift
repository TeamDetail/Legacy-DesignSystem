import SwiftUI

@available(macOS 12, iOS 15, *)
public enum LegacyTabItem: Int, CaseIterable {
    case shop, medal, flag, battle, trophy
    
    var icon: Image {
        switch self {
        case .flag:
            Image(icon: .flag)
        case .battle:
            Image(icon: .battle)
        case .shop:
            Image(icon: .shop)
        case .trophy:
            Image(icon: .trophy)
        case .medal:
            Image(icon: .medal)
        }
    }
    
    var label: String {
        switch self {
        case .flag:
            "탐험"
        case .battle:
            "시련"
        case .shop:
            "상점"
        case .trophy:
            "랭킹"
        case .medal:
            "퀘스트"
        }
    }
}
