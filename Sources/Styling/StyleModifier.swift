import SwiftUI

public struct StyleModifier: ViewModifier {
    
    private let style: ViewStyleModifier
    
    public init(_ style: ViewStyleModifier) {
        self.style = style
    }
    
    public func body(content: Content) -> some View {
        switch style {
        case .font(let font):
            content.font({
                guard let font = font else { return nil }
                return Font.custom(font.name, size: font.size)
            }())
        case .backgroundColor(let color):
            content.background(Color(color.name))
        case .foregroundColor(let color):
            content.foregroundColor({
                guard let color = color else { return nil}
                return Color(color.name)
            }())
        case .backgroundImage(let image):
            content.background(Image(image.name))
        case .corner(let radius):
            content.cornerRadius(radius.value)
        }
    }
}
