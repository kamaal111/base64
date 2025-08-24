//
//  CheckForUpdatesViewModel.swift
//  Base64
//
//  Created by Kamaal M Farah on 8/24/25.
//

import Sparkle
import Foundation

final class CheckForUpdatesViewModel: ObservableObject {
    @Published private(set) var canCheckForUpdates = false

    init(updater: SPUUpdater) {
        updater
            .publisher(for: \.canCheckForUpdates)
            .assign(to: &$canCheckForUpdates)
    }
}
