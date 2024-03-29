//
//  File.swift
//  
//
//  Created by Peter Klose on 09.11.22.
//

import Foundation

struct Table {
    private var stackOfCards = [Card]()
    
    mutating func nextCard() -> Card? {
        stackOfCards.isEmpty ? nil : stackOfCards.removeFirst()
    }
    
    init(numberOfDecks: Int = 6, shuffle: ([Card]) -> [Card] = {stackOfCards in stackOfCards.shuffled()}) {
        for _ in 1...numberOfDecks {
            generateOneDeck()
        }
        stackOfCards = shuffle(stackOfCards)
    }
    
    mutating fileprivate func generateOneDeck() {
        for rank in Card.Rank.allCases {
            for _ in 0...3 {
                stackOfCards.append(Card(rank: rank))
            }
        }
    }
    
}
