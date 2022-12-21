//
//  DesignSystemStyles.swift
//  DesingSystemDemo
//
//  Created by Jorge Benavides on 21/12/22.
//

import DesignSystem
import Styling

extension DesignSystem {
    
    var primaryButton: ViewStyle {
        .init(
            .font(fonts.button),
            .backgroundColor(colors.primary),
            .foregroundColor(colors.text)
        )
    }
    
    var destructiveButton: ViewStyle {
        .init(
            .font(fonts.button),
            .backgroundColor(colors.destructive),
            .foregroundColor(colors.text)
        )
    }
    
}
