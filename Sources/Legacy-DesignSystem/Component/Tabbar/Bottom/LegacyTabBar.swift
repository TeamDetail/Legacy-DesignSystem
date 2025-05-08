import SwiftUI

@available(macOS 12, iOS 15, *)
public struct LegacyTabBar<Content: View>: View {
    @Binding var selection: LegacyTabItem
    let content: Content
    
    public init(
        selection: Binding<LegacyTabItem>,
        @ViewBuilder content: () -> Content)
    {
        self._selection = selection
        self.content = content()
    }
    
    public var body: some View {
        ZStack(alignment: .bottom) {
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea(edges: .bottom)
            
            RoundedRectangle(cornerRadius: 20)
                .foreground(LegacyColor.Background.normal)
                .frame(height: 72)
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 10)
                .overlay {
                    VStack {
                        HStack(spacing: 35) {
                            ForEach(LegacyTabItem.allCases, id: \.self) { item in
                                LegacyNavigationCell(item: item, isSelected: item == selection) {
                                    selection = item
                                }
                            }
                        }
                    }
                }
                .ignoresSafeArea(edges: .bottom)
                .safeAreaInset(edge: .bottom) {
                    Color.clear.frame(height: 20)
                }
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

@available(macOS 12, iOS 15, *)
public struct TestView : View {
    @State private var hello: LegacyTabItem = .flag
    public var body: some View {
        LegacyTabBar(selection: $hello) {
            switch hello {
            case .flag:
                TestView()
            case .battle:
                ScrollView {
                    ForEach(1...100, id: \.self) { hello in
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 400, height: 150)
                    }
                    .frame(maxWidth: .infinity)
                }
            case .shop:
                EmptyView()
            case .trophy:
                EmptyView()
            case .medal:
                EmptyView()
            }
        }
    }
}

@available(macOS 12, iOS 15, *)
#Preview {
    TestView()
}
