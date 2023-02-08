//
//  File.swift
//  
//
//  Created by Peter Klose on 18.01.23.
//

import Foundation

struct Player {
    var name: String
    private var cards: [Card] = []
    var valueOfHand: Int {
        calculateValueOfHand()
    }
    
    fileprivate func calculateValueOfHand() -> Int {
        cards.sorted {
            $0.value < $1.value
        }.reduce(0) {
            $0 + ($1.rank == .ace && $0 > 10 ? 1 : $1.value)
        }
    }
    
    init(name: String) {
        self.name = name
    }
    
    mutating func takeOne(card: Card) {
        self.cards.append(card)
    }
    func showHand() -> [Card] {
        cards
    }
    
}
