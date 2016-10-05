//
//  GameEngine.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class GameEngine {
    
    let player1: Player
    let player2: Player
    var deck: Deck
    
    init(player1: String, player2: String) {
        self.deck = Deck()
        self.player1 = Player(name: player1, hand: Hand(cards: deck.split().0) )
        self.player2 = Player(name: player2, hand: Hand(cards: deck.split().1) )
    }
    
    func playOneTurn() -> (Player, Card?, Card?) {
        
        guard let card1 = player1.flip() else {
            return (player2, nil, nil)
        }
        
        guard let card2 = player2.flip() else {
            return (player1, nil, nil)
        }
        
        if card1.rank.rawValue > card2.rank.rawValue {
            return (player1, card1, card2)
        } else {
            return (player2, card1, card2)
        }
        
    }
    
    func award(cards: [Card], to player: Player) {
        
        for card in cards {
            player.hand.give(card: card)
        }
        
    }
    
    
    func gameOver() -> Bool {
        return !player1.hasCards() || !player2.hasCards()
    }
    
    
}
