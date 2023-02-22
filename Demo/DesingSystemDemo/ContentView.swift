//
//  ContentView.swift
//  DesingSystemDemo
//
//  Created by Jorge Benavides on 03/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.designSystem)
    var ds
    
    var body: some View {
        TabView {
            AtomsView()
                .tabItem {
                    Image(system: ds.images.globeIcon)
                    Text("Hello")
                }
            StyledView()
                .tabItem {
                    Image(system: ds.images.paletteIcon)
                    Text("Styles")
                }
        }
        .style(.tint(ds.colors.primary))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
