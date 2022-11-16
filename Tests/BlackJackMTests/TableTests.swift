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
        let table = Table()
        XCTAssertEqual(table.stackOfCards.count/52, 6)
    }
}
