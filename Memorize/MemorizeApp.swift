//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Dallas Carraher on 9/12/20.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
