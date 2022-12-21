import Foundation

public struct Image {
    
    public let name: String
    
    public init(_ name: StaticString) {
        self.name = "\(name)"
    }
}
