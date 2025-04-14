//
//  CardInfo.swift
//  DeckOfCards
//
//  Created by Iceman on 4/14/25.
//
import Foundation

struct CardInfo: Identifiable, Hashable {
    let id = UUID()
    let rank: String
    let suit: String
    let emoji: String

    var description: String {
        "\(rank)"
    }

    var imageName: String {
        "\(description)_of_\(suit)"
    }
}
