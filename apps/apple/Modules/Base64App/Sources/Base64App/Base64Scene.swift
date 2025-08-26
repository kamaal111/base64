//
//  Base64Scene.swift
//  Base64App
//
//  Created by Kamaal M Farah on 8/26/25.
//

import Sparkle
import SwiftUI

public struct Base64Scene: Scene {
    private let updaterController = SPUStandardUpdaterController(
        startingUpdater: true,
        updaterDelegate: nil,
        userDriverDelegate: nil
    )

    public init() { }

    public var body: some Scene {
        WindowGroup {
            Base64ContentView()
        }
        .commands {
            CommandGroup(after: .appInfo) {
                CheckForUpdatesButton(updater: updaterController.updater)
            }
        }
    }
}
