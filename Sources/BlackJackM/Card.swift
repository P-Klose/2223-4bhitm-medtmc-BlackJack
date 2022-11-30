//
//  File.swift
//  
//
//  Created by Peter Klose on 09.11.22.
//

import Foundation

struct Card {
    var rank: Rank
    var value: Int {
        rank == Rank.ace ? 11:min(rank.rawValue, 10)
    }
    enum Rank: Int, CaseIterable {
        case two = 2, three, four, five, six, seven, eight, nine, ten, jack, queen, king, ace
    }
    
}
