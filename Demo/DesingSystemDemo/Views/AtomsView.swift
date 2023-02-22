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
    @Environment(\.designSystem.colors)
    var colors
    @Environment(\.designSystem.images)
    var images
    @Environment(\.designSystem.fonts)
    var fonts
    
    var body: some View {
        VStack {
            Image(images.background)
            Text("Hello, world!")
                .style(
                    .font(fonts.display),
                    .foregroundColor(colors.primary)
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
