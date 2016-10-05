//
//  Hand.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class Hand {

    var cards: [Card]
    var size: Int { return cards.count }
    
    init(cards: [Card]) {
        self.cards = cards
    }

    func flip() -> Card? {
        var removed: Card?
        if cards.count > 0 {
            removed = cards.removeFirst()
        } else {
            removed = nil
        }
        return removed
    }
    
    func give(card: Card) { cards.append(card) }
    func lose(card: Card) { cards = cards.filter({ $0.description != card.description }) }
    
}
