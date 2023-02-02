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
        var value = cards.reduce(0, {$0 + $1.value})
        if value > 21 && cards.contains(Card(rank: .ace)){
            value -= 10
        }
        return value
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
