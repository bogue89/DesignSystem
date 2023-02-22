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
                .padding([.leading, .trailing], 30)
                .padding([.top, .bottom], 10)
                .style(designSystem.primaryButton)
            Button("Destructive", action: { })
                .padding([.leading, .trailing], 30)
                .padding([.top, .bottom], 10)
                .style(designSystem.destructiveButton)
        }
        .padding()
    }
}

struct StyledView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StyledView().environment(\.designSystem, .production)
            StyledView().environment(\.designSystem, .debug)
        }
    }
}
