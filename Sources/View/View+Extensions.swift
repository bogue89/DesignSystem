import Styling
import Atoms
import SwiftUI

public extension View {

    func style(_ styles: ViewStyleModifier...) -> some View {
        modifier(StylesModifier(styles))
    }
    
    func style(_ styles: ViewStyle) -> some View {
        modifier(StylesModifier(styles.modifiers))
    }
}

public extension SwiftUI.Image {
    
    init(_ image: Atoms.Image, bundle: Bundle? = nil) {
        self.init(image.name, bundle: bundle)
    }
    
    @available(macOS 11.0, *)
    init(system image: Atoms.Image, bundle: Bundle? = nil) {
        self.init(systemName: image.name)
    }
}

public extension SwiftUI.Color {
    
    init(_ color: Atoms.Color, bundle: Bundle? = nil) {
        self.init(color.name, bundle: bundle)
    }
}

