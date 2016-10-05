//
//  Player.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class Player {

    var name: String
    var hand: Hand
    
    init(name: String, hand: Hand) {
        self.name = name
        self.hand = hand
    }

    func hasCards() -> Bool {
        return hand.cards.count > 0
    }

    func flip() -> Card? {
        var removed: Card?
        if hand.cards.count > 0 {
            removed = hand.cards.removeFirst()
        } else {
            removed = nil
        }
        return removed
    }
    
    func give(card: Card) { hand.cards.append(card) }
    func lose(card: Card) { hand.cards = hand.cards.filter({ $0.description != card.description }) }
    
}
