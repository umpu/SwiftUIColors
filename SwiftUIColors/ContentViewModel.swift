import SwiftUI

struct ContentViewModel {
    var colorSchemes: [ColorScheme] = [.dark, .light]
    var colorSchemeContrasts: [ColorSchemeContrast] = [.standard, .increased]
    var colors: [Color] = [.red, .orange, .yellow, .green, .mint, .teal, .cyan, .blue, .indigo, .purple, .pink, .brown]
}
