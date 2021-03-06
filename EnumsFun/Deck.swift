//
//  Deck.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class Deck {
    
    var cards = [Card]().shuffled()
    
    init() {
        for suit in Suit.suits {
            for rank in Rank.ranks {
                cards.append(Card(rank: rank, suit: suit))
            }
        }
    }
    
    func split() -> ([Card], [Card]) {
        return self.cards.split()
    }
    

}
