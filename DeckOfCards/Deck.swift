//
//  Deck.swift
//  DeckOfCards
//
//  Created by Iceman on 4/14/25.
//

import Foundation

class Deck: ObservableObject {
    @Published var cards: [CardInfo] = []

    init() {
        resetDeck()
    }

    func resetDeck() {
        let suits = [("hearts", "❤️"), ("diamonds", "♦️"), ("clubs", "♣️"), ("spades", "♠️")]
        let ranks = ["ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "jack", "queen", "king"]

        cards = suits.flatMap { suit in
            ranks.map { rank in
                CardInfo(rank: rank, suit: suit.0, emoji: suit.1)
            }
        }
    }

    func shuffle() {
        cards.shuffle()
    }
}
