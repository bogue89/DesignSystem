import SwiftUI

public struct DesingSystemEnvironment: Equatable {
    public static let `default` = DesingSystemEnvironment("default")
    
    public let rawValue: String

    public init(_ rawValue: String) {
        self.rawValue = rawValue
    }
}

private struct DesignSystemKey: EnvironmentKey {
    static let defaultValue = DesignSystem()
}

public extension EnvironmentValues {
    var designSystem: DesignSystem {
        get { self[DesignSystemKey.self] }
        set { self[DesignSystemKey.self] = newValue }
    }
}
