import Atoms

public enum ViewStyleModifier {
    case font(_ font: Font?)
    case backgroundImage(_ color: Image)
    case backgroundColor(_ color: Color)
    case foregroundColor(_ color: Color?)
    case tint(_ color: Color?)
    case corner(_ radius: Dimension)
}


