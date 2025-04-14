//
//  SettingsView.swift
//  DeckOfCards
//
//  Created by Iceman on 4/14/25.
//
import SwiftUI

struct SettingsView: View {
    @Binding var isVisible: Bool

    var body: some View {
        VStack(spacing: 20) {
            Text("Settings")
                .font(.largeTitle)

            Button("Close Settings") {
                withAnimation {
                    isVisible = false
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white.opacity(0.95))
    }
}
