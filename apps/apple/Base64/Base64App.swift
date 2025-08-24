//
//  Base64App.swift
//  Base64
//
//  Created by Kamaal M Farah on 3/29/25.
//

import SwiftUI
import Sparkle

@main
struct Base64App: App {
    private let updaterController = SPUStandardUpdaterController(
        startingUpdater: true,
        updaterDelegate: nil,
        userDriverDelegate: nil
    )

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            CommandGroup(after: .appInfo) {
                CheckForUpdatesButton(updater: updaterController.updater)
            }
        }
    }
}
