//
//  ContentView.swift
//  DeckOfCards
//
//  Created by Iceman on 4/14/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var deck = Deck()
    @State private var showSettings = false

    var body: some View {
        ZStack {
            TableView(deck: deck)
            
            if showSettings {
                SettingsView(isVisible: $showSettings)
            } else {
                HiddenSettingsButton(showSettings: $showSettings)
            }
        }
    }
}

#Preview {
    ContentView()
}
