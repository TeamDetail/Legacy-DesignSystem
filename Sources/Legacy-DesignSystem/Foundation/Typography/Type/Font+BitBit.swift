//
//  Font+BitBit.swift
//  Legacy-DesignSystem
//
//  Created by dgsw30 on 5/8/25.
//
import SwiftUI

@available(macOS 12, iOS 15, *)
extension Font {
    public static func bitFont(size: CGFloat) -> Self {
        Font.custom("DNFBitBitOTF", size: size)
    }
}
