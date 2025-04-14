//
//  CardView.swift
//  DeckOfCards
//
//  Created by Iceman on 4/14/25.
//
import SwiftUI

struct CardView: View {
    @State private var isFaceUp = true
    let card: CardInfo

    var body: some View {
        ZStack {
            Image(isFaceUp ? card.imageName : "card_back")
                .resizable()
                .frame(width: 80, height: 120)
                .cornerRadius(8)
                .shadow(radius: 3)
        }
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.3)) {
                isFaceUp.toggle()
            }
        }
    }
}
