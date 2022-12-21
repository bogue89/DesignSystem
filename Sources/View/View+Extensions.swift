import Styling
import SwiftUI

public extension View {

    func style(_ styles: ViewStyleModifier...) -> some View {
        modifier(StylesModifier(styles))
    }
    
    func style(_ styles: ViewStyle) -> some View {
        modifier(StylesModifier(styles.modifiers))
    }
}
