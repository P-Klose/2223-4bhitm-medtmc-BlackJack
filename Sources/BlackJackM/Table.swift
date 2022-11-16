//
//  File.swift
//  
//
//  Created by Peter Klose on 09.11.22.
//

import Foundation

struct Table {
    var stackOfCards = [Card]()
    
    mutating func nextCard() -> Card? {
        stackOfCards.isEmpty ? nil : stackOfCards.removeFirst()
    }
    init(numberOfDecks: Int = 6) {
        for _ in 1...52*numberOfDecks {
            stackOfCards.append(Card(rank: .eight))
        }
    }
}
