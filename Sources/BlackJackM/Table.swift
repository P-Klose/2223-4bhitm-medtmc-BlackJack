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
    
    init(numberOfDecks: Int = 6) {
        for _ in 1...numberOfDecks {
            generateOneDeck()
        }
    }
    
    mutating fileprivate func generateOneDeck() {
        for rank in Card.Rank.allCases {
            for _ in 0...3 {
                stackOfCards.append(Card(rank: rank))
            }
        }
    }
    
}
