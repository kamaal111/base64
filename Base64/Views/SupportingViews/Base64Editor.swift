//
//  Base64Editor.swift
//  Base64
//
//  Created by Kamaal M Farah on 3/30/25.
//

import SwiftUI

struct Base64Editor: View {
    @FocusState private var focused: Bool

    @Binding var text: String

    let title: String

    init(text: Binding<String>, title: String) {
        self._text = text
        self.title = title
    }

    init(
        text: Binding<String>,
        localizedTitle: LocalizedStringResource,
        localizedTitleComment: String = "",
        bundle: Bundle = .main
    ) {
        let title = NSLocalizedString(localizedTitle.key, bundle: bundle, comment: localizedTitleComment)
        self.init(text: text, title: title)
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            TextEditor(text: $text)
                .focused($focused)
        }
    }
}

#Preview {
    Base64Editor(text: .constant(""), title: "Base64")
}
