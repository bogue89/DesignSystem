import SwiftUI

public struct StylesModifier: ViewModifier {
    
    private let styles: [ViewStyleModifier]
    
    public init(_ styles: ViewStyleModifier...) {
        self.styles = styles
    }
    
    public init(_ styles: [ViewStyleModifier]) {
        self.styles = styles
    }
    
    public func body(content: Content) -> some View {
        if styles.count > 0 {
            content
                .modifier(StyleModifier(styles[0]))
                .modifier(StylesModifier(Array(styles[1...])))
        } else {
            content
        }
    }
}
