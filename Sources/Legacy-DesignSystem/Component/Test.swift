//
//  SwiftUIView.swift
//  Legacy-DesignSystem
//
//  Created by dgsw30 on 4/22/25.
//

import SwiftUI

@available(macOS 12, iOS 15, *)
struct Test: View {
    init() {
        Pretendard.register()
    }
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            //            VStack {
            //                Text("시험공부해야하는데;;")
            //                    .foreground(LegacyColor.Red.normal)
            //                    .font(.title2(.bold))
            //
            //                ProgressBar(progress: .one)
            //                ProgressBar(progress: .two)
            //                ProgressBar(progress: .three)
            //
            //                Button {
            //                    withAnimation(.easeIn) {
            //                        HapticManager.instance.impact(style: .soft)
            //                    }
            //                } label: {
            //                    Text("퀴즈풀고 탐험하기")
            //                        .foreground(LegacyColor.Blue.netural)
            //                        .font(.body1(.bold))
            //                        .frame(maxWidth: .infinity)
            //                        .frame(height: 50)
            //                        .background(LegacyColor.Fill.normal)
            //                        .overlay {
            //                            RoundedRectangle(cornerRadius: 8)
            //                                .stroke(lineWidth: 2)
            //                                .foreground(LegacyColor.Blue.netural)
            //                        }
            //                }
            //                .padding()
            //            }
            
//            LegacyScrollView(title: "상점", icon: .shop) {
//                RoundedRectangle(cornerRadius: 30)
//                    .foreground(LegacyColor.Red.netural)
//                    .frame(width: 300, height: 300)
//                
//                RoundedRectangle(cornerRadius: 30)
//                    .foreground(LegacyColor.Red.netural)
//                    .frame(width: 300, height: 300)
//                
//                RoundedRectangle(cornerRadius: 30)
//                    .foreground(LegacyColor.Red.netural)
//                    .frame(width: 300, height: 300)
//            }
//            .overlay(alignment: .top) {
//                RoundedRectangle(cornerRadius: 30)
//                    .padding(.horizontal)
//                    .frame(maxWidth: .infinity)
//                    .frame(height: 72)
//                    .clipShape(size: 20)
//            }
//            .refreshable {
//                print("Zz")
//            }
        }
    }
}

@available(macOS 12, iOS 15, *)
#Preview {
    Test()
}
