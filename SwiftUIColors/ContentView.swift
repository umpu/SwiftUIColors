//
//  ContentView.swift
//  SwiftUIColors
//
//  Created by Sonoma on 5/2/24.
//

import SwiftUI

struct ContentView: View {
    private var model = ContentViewModel()
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(model.colorSchemeContrasts, id: \.self) { colorSchemeContrast in
                ForEach(model.colorSchemes, id: \.self) { colorScheme in
                    VStack(spacing: 0) {
                        Text(colorScheme == .light ? "Light" : "Dark")
                        Text(colorSchemeContrast == .standard ? "Standard" : "Increased")
                        
                        ForEach(model.colors, id: \.self) { color in
                            Rectangle()
                                .environment(\.colorScheme, colorScheme)
                                .environment(\._colorSchemeContrast, colorSchemeContrast)
                                .foregroundStyle(color)
                                .overlay { Text(color.description) }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
