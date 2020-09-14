//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Dallas Carraher on 9/13/20.
//

import SwiftUI

class EmojiMemoryGame {
    private var modelAccessor: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🔪", "🍂", "🥧", "🍫"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count)
            { pairIndex in emojis[pairIndex] }
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        modelAccessor.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        modelAccessor.choose(card)
    }
}
