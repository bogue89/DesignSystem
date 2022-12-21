//
//  DesignSystem.swift
//  DesingSystemDemo
//
//  Created by Jorge Benavides on 21/12/22.
//

import DesignSystem

extension DesignSystem {
    static let production = DesignSystem(.production)
    static let debug = DesignSystem(.debug)
}

extension DesingSystemEnvironment {
    static let production = DesingSystemEnvironment("production")
    static let debug = DesingSystemEnvironment("debug")
}
