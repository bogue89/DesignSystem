import View

public struct DesignSystem {
    
    public let colors: DesignSystem.Colors
    public let fonts: DesignSystem.Fonts
    public let images: DesignSystem.Images
    public let dimensions: DesignSystem.Dimensions
    
    public init(_ environment: DesingSystemEnvironment = .default) {
        self.colors = .init(environment)
        self.fonts = .init(environment)
        self.images = .init(environment)
        self.dimensions = .init(environment)
    }
}

