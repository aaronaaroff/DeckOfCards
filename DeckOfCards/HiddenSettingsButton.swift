//
//  HiddenSettingsButton.swift
//  DeckOfCards
//
//  Created by Iceman on 4/14/25.
//
import SwiftUI

struct HiddenSettingsButton: View {
    @Binding var showSettings: Bool

    var body: some View {
        GeometryReader { geometry in
            Color.clear
                .frame(width: 50, height: 50)
                .contentShape(Rectangle()) // Makes sure it receives touches
                .onLongPressGesture(minimumDuration: 1.5) {
                    withAnimation {
                        showSettings = true
                    }
                }
                .position(x: 30, y: geometry.size.height - 30)
        }
    }
}
