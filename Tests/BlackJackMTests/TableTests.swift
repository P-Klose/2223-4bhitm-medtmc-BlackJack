//
//  File.swift
//  
//
//  Created by Peter Klose on 09.11.22.
//

import XCTest
@testable import BlackJackM

final class TableTests: XCTestCase {

    func testThatNewTableHasAtLeastOneCard {
        let table = Table()
        let card = table.nextCard()
    }
    
}
