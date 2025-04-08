//
//  ActionButton.swift
//  Base64
//
//  Created by Kamaal M Farah on 3/30/25.
//

import SwiftUI

struct ActionButton: View {
    @Environment(\.isEnabled) private var isEnabled

    let label: String
    let action: () -> Void

    init(label: String, action: @escaping () -> Void) {
        self.label = label
        self.action = action
    }

    init(
        localizedLabel: LocalizedStringResource,
        localizedLabelComment: String = "",
        bundle: Bundle = .main,
        action: @escaping () -> Void
    ) {
        let label = NSLocalizedString(localizedLabel.key, bundle: bundle, comment: localizedLabelComment)
        self.init(label: label, action: action)
    }

    var body: some View {
        Button(action: action) {
            Text(label)
                .bold()
                .foregroundStyle(isEnabled ? Color.accentColor : Color.secondary)
        }
    }
}

#Preview {
    ActionButton(label: "Decode", action: { })
        .padding()
}
