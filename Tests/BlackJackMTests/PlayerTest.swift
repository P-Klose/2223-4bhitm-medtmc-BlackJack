//
//  File.swift
//  
//
//  Created by Peter Klose on 18.01.23.
//

import XCTest
@testable import BlackJackM

final class PlayerTests: XCTestCase {
    
    func testThatPlayerHasAName() {
        let player = Player(name: "John Doe")
        XCTAssertEqual(player.name, "John Doe")
    }
    
    func testThatPlayerShowesAce_givenOneAce() {
        let someCard = Card(rank: Card.Rank.ace)
        let player = Player(name: "Sepp")
        
        player.takeOne(card: someCard)
        let hand = player.showHand()
        XCTAssertTrue(hand.contains(someCard))
    }
    func testThatPlayerShowesAce_givenOneJack() {
        let someCard = Card(rank: Card.Rank.jack)
        let player = Player(name: "Sepp")
        
        player.takeOne(card: someCard)
        let hand = player.showHand()
        XCTAssertTrue(hand.contains(someCard))
    }
    func testThatPlayerOnlyHaseOneCard_givenOneCard() {
        let someCard = Card(rank: Card.Rank.jack)
        let player = Player(name: "Sepp")
        
        player.takeOne(card: someCard)
        let hand = player.showHand()
        XCTAssertEqual(hand.count, 1)
    }
    
}
