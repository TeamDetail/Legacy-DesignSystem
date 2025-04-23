//
//  SwiftUIView.swift
//  Legacy-DesignSystem
//
//  Created by dgsw30 on 4/22/25.
//

import SwiftUI

@available(macOS 12, iOS 15, *)
struct SwiftUIView: View {
    init() {
        Pretendard.register()
    }
    var body: some View {
        Text("시험공부해야하는데;;")
            .foreground(LegacyColor.Red.normal)
            .font(.title2(.bold))
    }
}

@available(macOS 12, iOS 15, *)
#Preview {
    SwiftUIView()
}
