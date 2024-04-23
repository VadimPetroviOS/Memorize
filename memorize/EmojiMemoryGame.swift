//
//  EmojiMemoryGame.swift
//  memorize
//
//  Created by Вадим on 17.04.2024.
//
import Foundation
import SwiftUI

class EmojiMemoryGame: ObservableObject {
    private static let emojis = ["👀", "🫵", "⛑", "🧤","🦄", "🫵", "🤖", "👻", "🫥", "😈", "🫶", "🤡"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(numberOfPairsOfCards: 2) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            } else {
                return "👎"
            }
        }
    }
    
    @Published
    private var model = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    var color: Color  {
        .orange
    }
    
    var score: Int {
        model.score
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
