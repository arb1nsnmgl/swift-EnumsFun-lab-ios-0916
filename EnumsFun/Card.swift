//
//  Card.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

enum Suit: String {
    case Spades = "♠️", Diamonds = "♦️", Hearts = "♥️", Clubs = "♣️"
    
    static let suits = [Spades, Diamonds, Hearts, Clubs]
}

enum Rank: Int {
    case two = 2, three, four, five, six, seven, eight, nine, ten, jack, queen, king, ace
    
    var stringValue: String {
        switch self.rawValue {
        case 11: return "J"
        case 12: return "Q"
        case 13: return "K"
        case 14: return "A"
        default: return "\(self.rawValue)"
        }
    }
    
    static let ranks = [two, three, four, five, six, seven, eight, nine, ten, jack, queen, king, ace]
    
}

class Card {

    let suit: Suit
    let rank: Rank
    var description: String { return "\(self.rank.stringValue)\(self.suit.rawValue)" }
    
    init(rank: Rank, suit: Suit) {
        self.suit = suit
        self.rank = rank
    }
    
}
