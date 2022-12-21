import Foundation

public struct Color {
    
    public let name: String
    
    public init(_ name: StaticString) {
        self.name = "\(name)"
    }
}
