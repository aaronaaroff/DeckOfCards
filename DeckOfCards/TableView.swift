//
//  TableView.swift
//  DeckOfCards
//
//  Created by Iceman on 4/14/25.
//
import SwiftUI

struct TableView: View {
    @ObservedObject var deck: Deck

    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()

            ForEach(deck.cards) { card in
                CardView(card: card)
            }
        }
    }
}
