//
//  File.swift
//  
//
//  Created by Peter Klose on 09.11.22.
//

import XCTest
@testable import BlackJackM

final class TableTests: XCTestCase {

    func testThatNewTableHasAtLeastOneCard() {
        var table = Table()
        let card = table.nextCard()
        XCTAssertTrue(card != nil)
    }
    func testThatItHas1Deck_GivenOneDeck() {
        var table = Table(numberOfDecks: 1)
        for _ in 1...52 {
            let card = table.nextCard()
            XCTAssertNotNil(card)
        }
        let lastCard = table.nextCard()
        XCTAssertNil(lastCard)
    }
    func testThatItHas6DecksByDefault() {
        var table = Table()
        var count = 0
        while let _ = table.nextCard() {
            count += 1
        }
        XCTAssertEqual(6, count/52)
    }
    func testThatDeckHasFourCardsOfEveryRank_GivenOneDeck() {
        var table = Table(numberOfDecks: 1)
        var cardCountPerRank = [Card.Rank:Int]()
        for rank in Card.Rank.allCases {
            cardCountPerRank[rank] = 0
        }
        while let card = table.nextCard() {
            cardCountPerRank[card.rank]! += 1
        }
        for count in cardCountPerRank.values {
            XCTAssertEqual(4, count)
        }
    }
    
}
