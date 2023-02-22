//
//  DesignSystemFonts.swift
//  DesingSystemDemo
//
//  Created by Jorge Benavides on 21/12/22.
//

import DesignSystem
import Atoms

extension DesignSystem.Fonts {
    
    var display: Font {
        switch environment {
        case .production:
            return .init("Helvetica Bold", size: 32)
        default:
            return .init("Helvetica", size: 32)
        }
    }
    
    var button: Atoms.Font {
        switch environment {
        case .production:
            return .init("Helvetica Bold", size: 18)
        default:
            return .init("Helvetica", size: 18)
        }
    }
    
}
