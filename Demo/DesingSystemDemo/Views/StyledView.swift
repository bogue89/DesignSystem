//
//  StyledView.swift
//  DesingSystemDemo
//
//  Created by Jorge Benavides on 20/12/22.
//

import SwiftUI
import DesignSystem
import Styling

struct StyledView: View {
    
    @Environment(\.designSystem) var designSystem
    
    var body: some View {
        VStack {
            Button("Primary", action: { })
                .style(designSystem.primaryButton)
            Button("Destructive", action: { })
                .style(designSystem.destructiveButton)
        }
        .padding()
    }
}

struct StyledView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StyledView().environment(\.designSystem, .init(.production))
            StyledView().environment(\.designSystem, .init(.debug))
        }
    }
}
