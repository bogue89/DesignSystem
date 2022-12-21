//
//  DesingSystemDemoApp.swift
//  DesingSystemDemo
//
//  Created by Jorge Benavides on 20/12/22.
//

import SwiftUI

@main
struct DesingSystemDemoApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                AtomsView().tabItem({
                    Text("Hello")
                })
                StyledView().tabItem({
                    Text("Buttons")
                })
            }
        }
    }
}
