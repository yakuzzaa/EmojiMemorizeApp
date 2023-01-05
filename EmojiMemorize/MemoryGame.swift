//
//  MemoryGame.swift
//  EmojiMemorize
//
//  Created by polina on 05.01.2023.
//

import Foundation


struct MemoryGame<CardContent>{
    private(set) var cards = Array<Card>()
    
    func choose(_ card: Card){
        
    }
    init(numberOfPairsCard: Int, createCardContent: (Int) -> CardContent){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsCard{
            var content = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
        
    }
    
    
    struct Card{
        var isFaceUp: Bool = false
        var isMatches: Bool = false
        var content: CardContent
        
    }
}
