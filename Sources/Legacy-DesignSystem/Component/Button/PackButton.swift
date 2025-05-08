//
//  SwiftUIView.swift
//  Legacy-DesignSystem
//
//  Created by dgsw30 on 5/8/25.
//

import SwiftUI

//MARK: 근데 분리할 필요 없어보임 일단 해놓는거
@available(macOS 12, iOS 15, *)
public struct SwiftUIView: View {
    let title: String
    let description: String
    let credit: String
    let strokeColor: LegacyColorable
    let action: () -> Void
    
    public init(title: String, description: String, credit: String, strokeColor: LegacyColorable, action: @escaping () -> Void) {
        self.title = title
        self.description = description
        self.credit = credit
        self.strokeColor = strokeColor
        self.action = action
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.bitFont(size: 20))
                    .foregroundStyle(.white)
                
                Text(description)
                    .font(.caption1(.extraBold))
                    .foreground(LegacyColor.Label.alternative)
                
                Spacer()
                
                HStack {
                    Text(credit)
                        .foreground(LegacyColor.Yellow.netural)
                    Text("크레딧")
                        .foregroundStyle(.white)
                }
                .font(.bitFont(size: 16))
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 12)
            .frame(width: 194, height: 160)
            .background(LegacyColor.Fill.normal)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 2)
                    .foreground(strokeColor)
            }
        }
    }
}

@available(macOS 12, iOS 15, *)
#Preview {
    SwiftUIView(title: "삼국시대팩", description: "고구려 & 신라 & 백제 특성 카드가 포함된 카드팩", credit: "300,000", strokeColor: LegacyColor.Blue.alternative) {
        
    }
}
