//
//  ContentView.swift
//  SwiftUIColors
//
//  Created by Sonoma on 5/2/24.
//

import SwiftUI

struct ContentView: View {
    var colorSchemes: [ColorScheme] = [.dark, .light]
    var colorSchemeContrasts: [ColorSchemeContrast] = [.standard, .increased]
    var colors: [Color] = [.red, .orange, .yellow, .green, .mint, .teal, .cyan, .blue, .indigo, .purple, .pink, .brown]
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(colorSchemeContrasts, id: \.self) { colorSchemeContrast in
                ForEach(colorSchemes, id: \.self) { colorScheme in
                    VStack(spacing: 0) {
                        Text(colorScheme == .light ? "Light" : "Dark")
                        Text(colorSchemeContrast == .standard ? "Standard" : "Increased")
                        
                        ForEach(colors, id: \.self) { color in
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
