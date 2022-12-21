import Foundation

public struct Font {
    
    public let name: String
    public let size: CGFloat
    
    public init(_ name: StaticString, size: CGFloat) {
        self.name = "\(name)"
        self.size = size
    }
}
