//
//  memorizeApp.swift
//  memorize
//
//  Created by Вадим on 16.04.2024.
//

import SwiftUI

@main
struct memorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
