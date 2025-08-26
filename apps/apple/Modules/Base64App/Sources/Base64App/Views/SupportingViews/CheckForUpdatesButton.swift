//
//  CheckForUpdatesButton.swift
//  Base64App
//
//  Created by Kamaal M Farah on 8/26/25.
//

import SwiftUI
import Sparkle

struct CheckForUpdatesButton: View {
    @ObservedObject private var checkForUpdatesViewModel: CheckForUpdatesViewModel

    private let updater: SPUUpdater

    init(updater: SPUUpdater) {
        self.updater = updater
        self.checkForUpdatesViewModel = CheckForUpdatesViewModel(updater: updater)
    }

    var body: some View {
        Button("Check for Updates…", action: updater.checkForUpdates)
            .disabled(!checkForUpdatesViewModel.canCheckForUpdates)
    }
}

#Preview {
    let updaterController = SPUStandardUpdaterController(
        startingUpdater: true,
        updaterDelegate: nil,
        userDriverDelegate: nil
    )

    CheckForUpdatesButton(updater: updaterController.updater)
        .padding(.all, 16)
}
