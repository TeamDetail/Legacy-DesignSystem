//
//  SwiftUIView.swift
//  Legacy-DesignSystem
//
//  Created by dgsw30 on 5/8/25.
//

import SwiftUI

@available(macOS 12, iOS 15, *)
public struct LegacyScrollView<Content: View>: View {
    let title: String
    let icon: LegacyIconography
    let content: Content
    
    public init
    (title: String,
     icon: LegacyIconography,
     @ViewBuilder content: () -> Content) {
        self.title = title
        self.icon = icon
        self.content = content()
    }
    
    public var body: some View {
        ScrollView(showsIndicators: false) {
            HStack {
                Image(icon: icon)
                    .resizable()
                    .frame(width: 36, height: 36)
                    .foregroundStyle(.white)
                Text(title)
                    .font(.bitFont(size: 28))
                    .foregroundStyle(.white)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .padding(12)
            
            content
        }
        .background(LegacyColor.Background.alternative)
    }
}
