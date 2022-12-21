import Foundation

public struct ViewStyle {
    
    public let modifiers: [ViewStyleModifier]
    
    public init(_ styles: ViewStyleModifier...) {
        self.modifiers = styles
    }
    
    public init(_ styles: [ViewStyleModifier]) {
        self.modifiers = styles
    }
}
