//
//  File.swift
//  
//
//  Created by Peter Klose on 18.01.23.
//

import XCTest
@testable import BlackJackM

final class PlayerTests: XCTestCase {
    private var player: Player!

    override func setUp() {
        player = Player(name: "John Doe")
    }
    
    func testThatPlayerHasAName() {
        XCTAssertEqual(player.name, "John Doe")
    }
    
    func testThatPlayerShowesAce_givenOneAce() {
        let someCard = Card(rank: Card.Rank.ace)
        
        player.takeOne(card: someCard)
        let hand = player.showHand()
        XCTAssertTrue(hand.contains(someCard))
    }
    
    func testThatPlayerShowesJack_givenOneJack() {
        let someCard = Card(rank: Card.Rank.jack)
        
        player.takeOne(card: someCard)
        let hand = player.showHand()
        XCTAssertTrue(hand.contains(someCard))
    }
    
    func testThatPlayerOnlyHaseOneCard_givenOneCard() {
        let someCard = Card(rank: Card.Rank.jack)
        
        player.takeOne(card: someCard)
        let hand = player.showHand()
        XCTAssertEqual(hand.count, 1)
    }
    
    func testThatPlayerHasTwoCards_givenTwoCards() {
        let firstCard = Card(rank: .king)
        let secondCard = Card(rank: .eight)
        
        player.takeOne(card: firstCard)
        player.takeOne(card: secondCard)
        
        let hand = player.showHand()
        XCTAssertEqual(hand.count, 2)
    }
    
    func testThatValueOfHandIs0_givenEmptyHand() {
        XCTAssertEqual(player.valueOfHand, 0)
    }
    
    func testThatValueOfHandIs2_givenOneTwo() {
        player.takeOne(card: Card(rank: .two))
        XCTAssertEqual(player.valueOfHand, 2)
    }
    
    func testThatValueOfHandIs5_givenCardsTwoAndThree() {
        player.takeOne(card: Card(rank: .two))
        player.takeOne(card: Card(rank: .three))
        XCTAssertEqual(player.valueOfHand, 5)
    }
    
    func testThatValueOfHandIs12_givenTwoAces() {
        player.takeOne(card: Card(rank: .ace))
        player.takeOne(card: Card(rank: .ace))
        XCTAssertEqual(player.valueOfHand, 12)
    }
    
    func testThatValueOfHandIs13_givenThreeAces() {
        player.takeOne(card: Card(rank: .ace))
        player.takeOne(card: Card(rank: .ace))
        player.takeOne(card: Card(rank: .ace))
        XCTAssertEqual(player.valueOfHand, 13)
    }
    func testThatValueOfHandIs13_givenCardsTwoAndAceAndKing() {
        player.takeOne(card: Card(rank: .two))
        player.takeOne(card: Card(rank: .ace))
        player.takeOne(card: Card(rank: .king))
        XCTAssertEqual(player.valueOfHand, 13)
    }
    func testThatValueOfHandIs12_givenCardsTwoAcesAndOneTen() {
        player.takeOne(card: Card(rank: .ace))
        player.takeOne(card: Card(rank: .ace))
        player.takeOne(card: Card(rank: .ten))
        XCTAssertEqual(player.valueOfHand, 12)
    }
    
    
}
