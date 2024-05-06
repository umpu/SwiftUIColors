import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var colorSchemes: [ColorScheme] = [.dark, .light]
    @Published var colorSchemeContrasts: [ColorSchemeContrast] = [.standard, .increased]
    @Published var colors: [Color] = [.red, .orange, .yellow, .green, .mint, .teal, .cyan, .blue, .indigo, .purple, .pink, .brown]
}
