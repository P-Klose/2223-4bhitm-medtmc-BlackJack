//
//  File.swift
//  
//
//  Created by Peter Klose on 09.11.22.
//

import XCTest
@testable import BlackJackM

final class CardTests: XCTestCase {

    func testThatValueConformsToRank() {
        let expectedValues = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10,10,11]
        var currentIndex = 0
        for rank in Card.Rank.allCases {
            let card = Card(rank: rank)
            XCTAssertEqual(expectedValues[currentIndex], card.value)
            currentIndex += 1
        }
    }
}
