import SwiftUI

@available(macOS 12, iOS 15, *)
public struct LegacyMenuBar: View {
    public let action: (LegacyMenuItem) -> Void
    @State private var showAnimation = false

    public init(action: @escaping (LegacyMenuItem) -> Void) {
        self.action = action
    }

    public var body: some View {
        VStack(spacing: 16) {
            ForEach(Array(LegacyMenuItem.allCases.enumerated()), id: \.element) { index, item in
                Button {
                    withAnimation(.spring(duration: 0.2)) {
                        HapticManager.instance.impact(style: .soft)
                        action(item)
                    }
                } label: {
                    item.icon
                        .foreground(LegacyColor.Common.white)
                }
                .opacity(showAnimation ? 1 : 0)
                .offset(y: showAnimation ? 0 : 20)
                .animation(
                    .spring(response: 0.4, dampingFraction: 0.7)
                        .delay(Double(index) * 0.05),
                    value: showAnimation
                )
            }
        }
        .padding(16)
        .background(LegacyColor.Fill.normal)
        .clipShape(size: 12)
        .onAppear {
            showAnimation = true
        }
    }
}


@available(macOS 12, iOS 15, *)
public struct TestView2: View {
    @State private var showMenu = false
    @State private var buttonFrame: CGRect = .zero
    
    public var body: some View {
        ZStack {
            HStack {
                Spacer()
                Button {
                    withAnimation(.spring(duration: 0.2)) {
                        showMenu.toggle()
                    }
                } label: {
                    Image(icon: .menu)
                        .foreground(LegacyColor.Common.white)
                        .frame(width: 56, height: 56)
                        .background(LegacyColor.Fill.normal)
                        .clipShape(size: 12)
                }
                .background(
                    GeometryReader { geo in
                        Color.clear
                            .onAppear {
                                buttonFrame = geo.frame(in: .global)
                            }
                            .onChange(of: geo.frame(in: .global)) { newFrame in
                                buttonFrame = newFrame
                            }
                    }
                )
                .padding()
            }
            
            if showMenu {
                LegacyMenuBar { item in
                    if item == .arrow {
                        withAnimation(.spring(response: 0.35, dampingFraction: 0.75)) {
                            showMenu = false
                        }
                    } else {
                        print("\(item) tapped")
                    }
                }
                .scaleEffect(showMenu ? 1.0 : 0.8, anchor: .top)
                .opacity(showMenu ? 1.0 : 0)
                .offset(y: showMenu ? 0 : 40)
                .position(
                    x: buttonFrame.midX,
                    y: buttonFrame.midY + 60
                )
                .zIndex(100)
                .animation(.spring(response: 0.35, dampingFraction: 0.7), value: showMenu)
            }
        }
    }
}



@available(macOS 12, iOS 15, *)
#Preview {
    TestView2()
}

