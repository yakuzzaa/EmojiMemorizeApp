//
//  EmojiMemoryGame.swift
//  EmojiMemorize
//
//  Created by polina on 05.01.2023.
//

import SwiftUI


func makeCardContent(index: Int) -> String{
    return "🩼"
}

class EmojiMemoryGame{
    static let emojis = ["✈️","🚗","🚜","🚀","🚌","🛵","🛴","🚝","🚁","🛥️","⛵️","🚖","🚔"]
    static func createMemoryGame() -> MemoryGame<String>{
        
        MemoryGame<String>(numberOfPairsCard: 4) {
            pairIndex in EmojiMemoryGame.emojis[pairIndex]
            
        }
        
    }
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    private var model: MemoryGame<String> = createMemoryGame()
}

