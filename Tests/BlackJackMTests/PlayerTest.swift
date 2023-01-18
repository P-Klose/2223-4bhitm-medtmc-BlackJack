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
        var player = Player(name: "John Doe")
        XCTAssertEqual(player.name, "John Doe")
    }
    
    func testThatPlayerCanReceiveACard() {
        
    }
    
}
