//
//  File.swift
//  
//
//  Created by Peter Klose on 18.01.23.
//

import Foundation

struct Player {
    var name: String
    private var card: Card?
    
    mutating func takeOne(card: Card) {
        self.card = card
    }
    func showHand() -> [Card] {
        [card!]
    }
}
