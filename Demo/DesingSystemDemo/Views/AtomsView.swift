//
//  AtomsView.swift
//  DesingSystemDemo
//
//  Created by Jorge Benavides on 20/12/22.
//

import SwiftUI
import DesignSystem
import Atoms

struct AtomsView: View {
    
    @Environment(\.designSystem) var designSystem
    
    var body: some View {
        VStack {
            Image(designSystem.images.background.name)
            Text("Hello, world!")
                .style(
                    .font(designSystem.fonts.display),
                    .foregroundColor(designSystem.colors.primary)
                )
        }
        .padding()
    }
}

struct AtomsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AtomsView().environment(\.designSystem, .init(.production))
            AtomsView().environment(\.designSystem, .init(.debug))
        }
    }
}
